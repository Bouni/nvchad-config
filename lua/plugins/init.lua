return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- nvim-treesitter `main` branch: no ensure_installed / highlight modules anymore,
  -- parsers are installed via install() (needs tree-sitter CLI) and highlighting is started per buffer
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function(_, opts)
      require "nvchad.configs.treesitter" -- loads base46 syntax/treesitter highlights

      -- scheduled so nvchad.options has added mason/bin (tree-sitter CLI) to PATH
      vim.schedule(function()
        if vim.fn.executable "tree-sitter" == 1 then
          require("nvim-treesitter").install(opts.ensure_installed)
        else
          vim.notify("tree-sitter CLI not found, can't install parsers", vim.log.levels.WARN)
        end
      end)

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "luadoc",
        "printf",
        "query",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "json",
        "yaml",
        "bash",
        "python",
        "c",
        "cpp",
        "go",
        "gomod",
        "gosum",
        "markdown",
        "markdown_inline",
        "caddy",
      },
    },
  },

  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPre",
    opts = {
      render = "background",
      enable_named_colors = true,
      enable_tailwind = false,
    },
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },
}
