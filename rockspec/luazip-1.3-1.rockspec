package = "LuaZip"
version = "1.3-1"
source = {
   url = "https://github.com/tomasguisasola/luazip/archive/v1.3.tar.gz",
   md5 = "",
   dir = "luazip-1.3",
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
   type = "builtin",
   modules = {
      zip = {
         sources = { "src/luazip.c" },
         libraries = { "zzip" },
         incdirs = { "$(ZZIP_INCDIR)", "src/" },
         libdirs = { "$(ZZIP_LIBDIR)" },
      },
   },
   copy_directories = { "doc", "tests", },
}
