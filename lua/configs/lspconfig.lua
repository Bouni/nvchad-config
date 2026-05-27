require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "ruff", "clangd", "caddy", "eslint" }
vim.lsp.enable(servers)
