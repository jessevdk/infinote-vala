using Xml;
using GLib;

class Fixup
{
	private unowned FileStream d_input;
	private unowned FileStream d_output;
	private string[] d_fixups;

	private Xml.Doc d_doc;
	private unowned Xml.Node d_node;

	public Fixup(FileStream inp, FileStream outp, string[] fixups)
	{
		d_input = inp;
		d_output = outp;
		d_fixups = fixups;
	}

	public bool Run()
	{
		d_doc = Xml.Parser.read_fd(d_input.fileno());

		if (d_doc == null)
		{
			stderr.printf("Failed to read input gi file\n");
			return false;
		}

		foreach (string fixup in d_fixups)
		{
			Fix(fixup);
		}

		d_doc.dump_format(d_output);
		return true;
	}

	delegate void XPathIterate(Xml.Node node);

	private void Find(Xml.Doc doc, string xpath, XPathIterate func)
	{
		Xml.XPath.Context ctx = new Xml.XPath.Context(doc);
		Xml.XPath.Object? ret = ctx.eval_expression(xpath);

		if (ret == null || ret.type != Xml.XPath.ObjectType.NODESET)
		{
			return;
		}

		for (int i = 0; i < ret.nodesetval->length(); ++i)
		{
			unowned Xml.Node item = ret.nodesetval->item(i);
			func(item);
		}
	}

	private void FixAddNode()
	{
		Find(d_doc, d_node.get_prop("path"), (match) => {
			unowned Xml.Node? child = d_node.children;

			while (child != null)
			{
				Xml.Node copy = child.doc_copy(d_doc, 1);
				match.add_child((owned)copy);

				child = child.next;
			}
		});
	}

	private void FixRemoveNode()
	{
		Find(d_doc, d_node.get_prop("path"), (match) => {
			match.unlink();
		});
	}

	private void FixMoveNode()
	{
		Find(d_doc, d_node.get_prop("path"), (match) => {
			// TODO
		});
	}

	private void SetAttr(Xml.Node node, string name, string val)
	{
		if (node.get_prop(name) != null)
		{
			node.set_prop(name, val);
		}
		else
		{
			node.new_prop(name, val);
		}
	}

	private string SubstituteRegex(string val, GLib.MatchInfo info)
	{
		GLib.Regex reg;

		try
		{
			reg = new GLib.Regex("$([0-9])");
		}
		catch (GLib.RegexError e)
		{
			return val;
		}

		string ret = val;
		unowned GLib.MatchInfo iinfo = info;

		try
		{
			ret = reg.replace_eval(val, val.length, 0, 0, (inf, result) => {
				int num = inf.fetch(1).to_int();

				string? v = iinfo.fetch(num);

				if (v != null)
				{
					result.append(v);
				}
				else
				{
					result.append(inf.fetch(0));
				}

				return true;
			});
		}
		catch (RegexError e)
		{
		
		}

		return ret;
	}

	private void FixSetAttr()
	{
		string? name = d_node.get_prop("name");
		string? mat = d_node.get_prop("match");

		if (name == null && mat == null)
		{
			return;
		}

		string? val = d_node.get_prop("value");

		if (val == null)
		{
			return;
		}

		Find(d_doc, d_node.get_prop("path"), (match) => {
			if (name != null)
			{
				SetAttr(match, name, val);
			}
			else
			{
				GLib.Regex reg;

				try
				{
					reg = new GLib.Regex(mat);
				}
				catch (GLib.RegexError e)
				{
					stderr.printf(@"Error compiling match regular expression ($(mat)): $(e.message)");
					return;
				}

				unowned Xml.Attr? attr = match.properties;

				while (attr != null)
				{
					GLib.MatchInfo info;

					if (reg.match(attr.name, 0, out info))
					{
						match.set_prop(attr.name, SubstituteRegex(val, info));
					}

					attr = attr.next;
				}
			}
		});
	}

	private void FixRemoveAttr()
	{
		string? name = d_node.get_prop("name");
		string? mat = d_node.get_prop("match");

		if (name == null && mat == null)
		{
			return;
		}

		Find(d_doc, d_node.get_prop("path"), (match) => {
			if (name != null)
			{
				match.unset_prop(name);
			}
			else
			{
				GLib.Regex reg;

				try
				{
					reg = new GLib.Regex(mat);
				}
				catch (GLib.RegexError e)
				{
					stderr.printf(@"Error compiling match regular expression ($(mat)): $(e.message)");
					return;
				}

				unowned Xml.Attr? attr = match.properties;

				while (attr != null)
				{
					if (reg.match(attr.name))
					{
						match.unset_prop(attr.name);
					}

					attr = attr.next;
				}
			}
		});
	}

	private void FixNode()
	{
		if (d_node.name == "add-node")
		{
			FixAddNode();
		}
		else if (d_node.name == "remove-node")
		{
			FixRemoveNode();
		}
		else if (d_node.name == "move-node")
		{
			FixMoveNode();
		}
		else if (d_node.name == "set-attr")
		{
			FixSetAttr();
		}
		else if (d_node.name == "remove-attr")
		{
			FixRemoveAttr();
		}
	}

	private void Fix(string filename)
	{
		Xml.Doc? fixup = Xml.Parser.read_file(filename);

		if (fixup == null)
		{
			stderr.printf(@"Could not read fixup file $(filename)\n");
			return;
		}

		unowned Xml.Node root = fixup.get_root_element();
		d_node = root.children;

		while (d_node != null)
		{
			FixNode();
			d_node = d_node.next;
		}
	}

	private static OptionEntry CreateOption(char short_name, string long_name, OptionFlags flags = OptionFlags.NO_ARG, string description = "", OptionArg arg = OptionArg.NONE, void *arg_data = 0, string arg_description = "")
	{
		OptionEntry entry = OptionEntry();

		entry.short_name = short_name;
		entry.long_name = long_name;
		entry.flags = flags;
		entry.description = description;
		entry.arg = arg;
		entry.arg_data = arg_data;
		entry.arg_description = arg_description;

		return entry;
	}

	public static int main(string[] args)
	{
		OptionContext context = new OptionContext("- vala gi fixup");
		OptionGroup group = new OptionGroup("main", "Main Options", "The main options");

		string? inputfile = null;
		string? outputfile = null;

		group.add_entries(new OptionEntry[] {
			CreateOption('i', "input", 0, "Input gi file", OptionArg.FILENAME, &inputfile, "gi filename"),
			CreateOption('o', "output", 0, "Output gi file", OptionArg.FILENAME, &outputfile, "gi filename")
		});

		context.set_main_group((owned)group);
		context.set_help_enabled(true);

		try
		{
			context.parse(ref args);
		}
		catch (OptionError e)
		{
			stderr.printf(@"Error while parsing command line arguments: $(e.message)\n");
			return 1;
		}

		if (args.length == 1)
		{
			stderr.printf("Please provide fixup files to use\n");
			return 1;
		}

		FileStream inp;

		if (inputfile == null)
		{
			inp = (owned)stdin;
		}
		else
		{
			inp = FileStream.open(inputfile, "r");
		}

		FileStream outp;
		
		if (outputfile == null)
		{
			outp = (owned)stdout;
		}
		else
		{
			outp = FileStream.open(outputfile, "w");
		}

		Fixup fixup = new Fixup(inp, outp, args[1:args.length]);
		return fixup.Run() ? 1 : 0;
	}
}
