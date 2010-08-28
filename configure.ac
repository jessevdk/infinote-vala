AC_PREREQ(2.60)
AC_INIT([infinity-vala], [libinfinity_api_version], [jessevdk@gnome.org])
AM_INIT_AUTOMAKE

#m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES])
AM_MAINTAINER_MODE
#AC_CONFIG_SRCDIR([libinfinity/common/inf-init.c])
#AC_CONFIG_HEADER([config.h libinfinity/inf-config.h])

LIBINFINITY_API_VERSION=0.5
AC_SUBST(LIBINFINITY_API_VERSION)

VALA_API_VERSION=0.10

AC_PATH_PROG(VALA_GEN_INTROSPECT, vala-gen-introspect-$VALA_API_VERSION)

if test "x$VALA_GEN_INTROSPECT" = "x"; then
	AC_PATH_PROG(VALA_GEN_INTROSPECT, vala-gen-introspect)
fi

AC_PATH_PROG(VAPIGEN, vapigen-$VALA_API_VERSION)

if test "x$VAPIGEN" = "x"; then
	AC_PATH_PROG(VAPIGEN, vapigen)
fi

AC_PATH_PROG(VALAC, valac-$VALA_API_VERSION)

if test "x$VALAC" = "x"; then
	AC_PATH_PROG(VALAC, valac)
fi

AC_SUBST(VALA_API_VERSION)
AC_SUBST(VALA_GEN_INTROSPECT)
AC_SUBST(VAPIGEN)
AC_SUBST(VALAC)

AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PROG_SED

###################################
# Check for regular dependencies
###################################

PKG_CHECK_MODULES(INFINITY,
	vala-$VALA_API_VERSION
	libinfinity-$LIBINFINITY_API_VERSION
	libinftext-$LIBINFINITY_API_VERSION
	libinftextgtk-$LIBINFINITY_API_VERSION
	libinfgtk-$LIBINFINITY_API_VERSION
)

VAPIDIR=`$PKG_CONFIG --variable=vapidir vala-$VALA_API_VERSION`
AC_SUBST(VAPIDIR)

AC_PATH_PROG(RM, rm, rm)
AC_SUBST(RM)

AC_CONFIG_FILES([
	Makefile
	libinfinity/Makefile
	libinftext/Makefile
	libinftextgtk/Makefile
	libinfgtk/Makefile
	external/Makefile
])

AC_OUTPUT

echo "
Configuration:

	vala-gen-introspect : $VALA_GEN_INTROSPECT
	vapigen             : $VAPIGEN
	valac               : $VALAC
"
