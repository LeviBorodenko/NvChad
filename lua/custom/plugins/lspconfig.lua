local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "pyright", "yamlls", "dockerls", "bashls", "tsserver", "vuels", "omnisharp" }

for _, lsp in ipairs(servers) do

  if( lsp == "omnisharp") then

    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = {"dotnet", "/home/leviborodenko/.local/share/nvim/mason/packages/omnisharp/OmniSharp.dll"}
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end
