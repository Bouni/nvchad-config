require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "ruff", "clangd", "caddy" }
vim.lsp.enable(servers)
