# $Id: Makefile,v 1.10 2006-07-24 01:24:36 tomas Exp $

T= zip
V= 1.3.0
CONFIG= ./config

include $(CONFIG)

SRCS= src/lua$T.c
OBJS= src/lua$T.o


lib: src/$(LIBNAME)

src/$(LIBNAME): $(OBJS)
	export MACOSX_DEPLOYMENT_TARGET="10.3"; $(CC) $(CFLAGS) $(LIB_OPTION) -o src/$(LIBNAME) $(OBJS) -lzzip

install: src/$(LIBNAME)
	mkdir -p $(LUA_LIBDIR)
	cp src/$(LIBNAME) $(LUA_LIBDIR)
	cd $(LUA_LIBDIR); ln -f -s $(LIBNAME) $T.so

clean:
	rm -f $L src/$(LIBNAME) $(OBJS)
