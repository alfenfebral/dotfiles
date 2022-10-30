-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "clangd",
  "tsserver",
  "rust_analyzer",
  "gopls",
  "eslint",
  "solidity_ls",
  "solc",
  "hls",
  "yamlls",
  "elixirls",
}

for _, lsp in ipairs(servers) do
  if lsp == "elixirls" then
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = { "/home/neo/lsp/elixir-ls/language_server.sh" },
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end
