require("nvchad.configs.lspconfig").defaults()

-- lsp servers
local servers = {
  "html",
  "pyright",
  "cssls",
  "clangd",
  "marksman",
  "jdtls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
