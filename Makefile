DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-plumber-collection
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-plumber-collection
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/p_search bin/p_pass bin/p_nsxiv bin/p_mpv bin/p_pcmanfm bin/p_xpdf bin/p_mupdf bin/p_gimp bin/p_pipe-viewer bin/p_acroread bin/p_less bin/p_tor bin/p_newdir bin/p_template bin/p_firefox bin/p_scratch  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
