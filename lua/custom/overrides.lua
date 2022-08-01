local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "html",
    "css",
    "python",
    "yaml",
    "typescript",
    "vue",
    "markdown",
    "c_sharp",
  },
}
M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "emmet-ls",
    "json-lsp",
    "pyright",
    "yaml-language-server",
    "vue-language-server",
    "dockerfile-language-server",

    -- dotnet
     "omnisharp-mono",

    -- shell
    "shellcheck",
  },
}
return M
