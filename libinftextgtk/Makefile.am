target = libinftextgtk-$(LIBINFINITY_API_VERSION)

vapidir = $(VAPIDIR)
vapi_DATA = $(target).vapi $(target).deps

vapi_meta =			\
	$(target).metadata	\
	$(target).namespace	\
	$(target).files		\
	$(target).deps

update-gi: $(vapi_meta)
	$(VALA_GEN_INTROSPECT) $(target) $(srcdir)

update-vapi: $(target).gi
	$(VAPIGEN) --vapidir $(VAPIDIR) --vapidir $(top_srcdir)/external --library $(target) $(target).gi

clean-gi:
	$(RM) $(target).gi

clean-vapi:
	$(RM) $(target).vapi

EXTRA_DIST =		\
	$(vapi_DATA)	\
	$(vapi_meta)
