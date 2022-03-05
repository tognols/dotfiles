local M = {}
local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   install = userPlugins,
}
return M