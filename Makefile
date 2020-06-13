
PREFIX ?= /usr/local
MFPX_BASE = ${PREFIX}/share/mfpx
MANPREFIX = ${PREFIX}/share/man

PKGFILES=\
	LICENSE\
	Makefile\
	README.md\
	man\
	mfpx\
	scripts

all:
	@echo "MFPX_BASE: ${MFPX_BASE}"
	@echo "These are the envirnoment variables"
	@echo "Edit them or script for yourself"

dist:
	mkdir mfpx-dist
	cp -r ${PKGFILES} mfpx-dist
	tar -czf mfpx-dist.tar.gz mfpx-dist
	rm -rf mfpx-dist

install:
	mkdir -p ${MFPX_BASE}
	cp -rv scripts ${MFPX_BASE}
	chmod 755 mfpx
	cp mfpx ${PREFIX}/bin
	mkdir -p ${MANPREFIX}/man1
	chmod 644 man/mfpx.1
	cp man/mfpx.1 ${MANPREFIX}/man1/mfpx.1

uninstall:
	rm -rf ${PREFIX}/bin/mfpx ${MFPX_BASE}
	rm -f ${MANPREFIX}/man1/mfpx


.PHONY: dist install uninstall
