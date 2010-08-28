target = libinfinity-$(LIBINFINITY_API_VERSION)

vapidir = $(VAPIDIR)
vapi_DATA = $(target).vapi $(target).deps

vapi_meta =			\
	$(target).namespace	\
	$(target).files		\
	$(target).deps

update-gi: $(vapi_meta)
	@echo "[VALA_GEN_INTROSPECT]"
	@$(VALA_GEN_INTROSPECT) $(target) $(srcdir)
	@cp $(target).gi $(target).gi.orig
	@echo "[FIXUP]"
	@$(top_srcdir)/fixup/fixup -i $(target).gi.orig -o $(target).gi $(target).fixup

update-vapi: $(target).gi
	$(VAPIGEN) --vapidir $(VAPIDIR) --vapidir $(top_srcdir)/external --library $(target) $(target).gi

clean-gi:
	$(RM) $(target).gi

clean-vapi:
	$(RM) $(target).vapi

EXTRA_DIST =		\
	$(vapi_DATA)	\
	$(vapi_meta)
