#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_QTILE_GNOME = $(PREFIX)/bin/qtile-gnome
PATH_QTILE_GNOME_DESKTOP = $(PREFIX)/share/applications/qtile-gnome.desktop
PATH_QTILE_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/qtile-gnome.session
PATH_QTILE_GNOME_XSESSION = $(PREFIX)/share/xsessions/qtile-gnome.desktop
PATH_GNOME_SESSION_QTILE = $(PREFIX)/bin/gnome-session-qtile

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/qtile-gnome-xsession.desktop $(PATH_QTILE_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/qtile-gnome.desktop $(PATH_QTILE_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/qtile-gnome.session $(PATH_QTILE_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/qtile-gnome $(PATH_QTILE_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-qtile $(PATH_GNOME_SESSION_QTILE)


uninstall:
	rm -f $(PATH_QTILE_GNOME)
	rm -f $(PATH_QTILE_GNOME_DESKTOP)
	rm -f $(PATH_QTILE_GNOME_SESSION)
	rm -f $(PATH_QTILE_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_QTILE)


.PHONY: all install uninstall
