BINDIR ?= /usr/bin
LIBEXECDIR ?= /usr/libexec
MANDIR ?= /usr/share/man/man1

.PHONY: build install uninstall clean

build:
	jbuilder build @install

install:
	mkdir -p $(DESTDIR)$(LIBEXECDIR)
	cp _build/default/bin/xcp_featured.exe $(DESTDIR)$(LIBEXECDIR)/xcp-featured

uninstall:
	rm -f $(DESTDIR)$(LIBEXECDIR)/xcp-featured

clean:
	jbuilder clean
