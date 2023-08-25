local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

-- Server list: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = { "tsserver", "gopls", "golangci_lint_ls", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

