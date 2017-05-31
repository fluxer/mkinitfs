DESTDIR = 
SBINDIR = $(PREFIX)/sbin

INSTALL = install -v
RM = rm -vf
CP = cp -vf

all:

install:
	$(INSTALL) -dm755 $(DESTDIR)$(SBINDIR)
	$(INSTALL) -dm755 $(DESTDIR)/etc/mkinitfs
	$(INSTALL) -m755 mkinitfs $(DESTDIR)$(SBINDIR)/mkinitfs
	$(CP) -r root $(DESTDIR)/etc/mkinitfs/
	$(CP) base.conf $(DESTDIR)/etc/mkinitfs/

uninstall:
	$(RM) $(DESTDIR)$(SBINDIR)/mkinitfs
	$(RM) -r $(DESTDIR)/etc/mkinitfs

.PHONY: all install uninstall
