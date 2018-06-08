-- This file was automatically generated for the LuaDist project.

package = "cosy-client"
version = "0.1-1"
-- LuaDist source
source = {
  tag = "0.1-1",
  url = "git://github.com/LuaDist-testing/cosy-client.git"
}
-- Original source
-- source  = {
--   url    = "git+https://github.com/cosyverif/client.git",
--   branch = "dev",
-- }

description = {
  summary    = "CosyVerif: client",
  detailed   = [[
    Client of the CosyVerif platform.
  ]],
  homepage   = "http://www.cosyverif.org/",
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "argparse",
  "ansicolors",
  "copas",
  "etlua",
  "lua-cjson-ol",
  "lua-websockets",
  "layeredata",
  "luasec",
  "luasocket",
  "serpent",
  "yaml",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.client"     ] = "src/cosy/client/init.lua",
    ["cosy.client.cli" ] = "src/cosy/client/cli.lua",
    ["cosy.client.http"] = "src/cosy/client/http.lua",
  },
  install = {
    bin = {
      ["cosy-cli"] = "src/cosy/client/bin.lua",
    },
  },
}