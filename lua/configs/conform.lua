local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    caddy = { "caddy" },
  },
  formatters = {
    caddy = { -- added
      command = "caddy",
      args = { "fmt", "-" },
      stdin = true,
    },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
