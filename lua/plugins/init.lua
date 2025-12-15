return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "markdown",
        "caddy",
      },
    },
  },

  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPre",
    config = function()
      require("nvim-highlight-colors").setup {
        -- Render style
        render = "background", -- or 'foreground' or 'virtual'

        -- Set virtual symbol (only used in virtual render mode)
        virtual_symbol = "■",

        -- Highlight named colors, like 'green'
        enable_named_colors = true,

        -- Highlight tailwind colors, e.g. 'bg-blue-500'
        enable_tailwind = false,

        -- Exclude filetypes or buftypes from being highlighted
        exclude_filetypes = {},
        exclude_buftypes = {},
      }
    end,
  },
}
