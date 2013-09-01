package = "LuaZip"
version = "1.3.1-1"
source = {
   url = "https://github.com/tomasguisasola/luazip/archive/v1_3_1.tar.gz",
   md5 = "cdc6f571f80fa14a3faca7fde1288da3",
   dir = "luazip-1_3_1",
}
description = {
   summary = "Library for reading files inside zip files",
   detailed = [[
      LuaZip is a lightweight Lua extension library used to read files
      stored inside zip files. The API is very similar to the standard
      Lua I/O library API.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/luazip/"
}
dependencies = {
   "lua >= 5.0"
}
external_dependencies = {
   ZZIP = {
      header = "zzip.h"
   }
}
build = {
   type = "make",
   build_variables = {
      LIB_OPTION = "$(LIBFLAG) -L$(ZZIP_LIBDIR)",
      CFLAGS = "$(CFLAGS) -I$(LUA_INCDIR) -I$(ZZIP_INCDIR)",
   },
   install_variables = {
      LUA_LIBDIR = "$(LIBDIR)",
      LUA_DIR = "$(LUADIR)"
   }
}
