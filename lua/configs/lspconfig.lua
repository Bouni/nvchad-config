require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "ruff", "clangd" }
vim.lsp.enable(servers)
