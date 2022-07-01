-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  nvChad = {
    update_url = "https://github.com/LeviBorodenko/NvChad",
    update_branch = "main",
  },
}

M.ui = {
   theme = "gruvchad",
}

M.plugins = {
   override = {},
   remove = {},
   user = {},
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig", -- path of lspconfig file
      },
   },
}

M.mappings = require("custom.mappings")

return M
