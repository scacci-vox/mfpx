
XDG_DATA_HOME ?= $(HOME)/.local/share
MFPX_BASE ?= $(XDG_DATA_HOME)/mfpx
DESTDIR ?= $(HOME)/.local/bin
MANPREFIX ?= $(XDG_DATA_HOME)/man

PKGFILES=\
	LICENSE\
	Makefile\
	README.md\
	man\
	mfpx\
	scripts

all:
	@echo "MFPX_BASE: $(MFPX_BASE)"
	@echo "DESTDIR: $(DESTDIR)"
	@echo "These are the envirnoment variables"
	@echo "Edit them or script for yourself"

dist:
	mkdir mfpx-dist
	cp -r ${PKGFILES} mfpx-dist
	tar -cf mfpx-dist.tar mfpx-dist
	gzip mfpx-dist.tar
	$(RM) -r mfpx-dist

install:
	mkdir -p $(MFPX_BASE)
	cp -rv scripts $(MFPX_BASE)
	chmod 755 mfpx
	cp mfpx $(DESTDIR)
	mkdir -p ${MANPREFIX}/man1
	chmod 644 man/mfpx.1
	cp man/mfpx.1 ${MANPREFIX}/man1/mfpx.1

uninstall:
	rm -rf $(DESTDIR)/mfpx $(MFPX_BASE)
	rm -f ${MANPREFIX}/man1/mfpx*


.PHONY: dist install uninstall
