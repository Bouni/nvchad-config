require("nvchad.configs.lspconfig").defaults()

-- vue_ls only handles HTML/CSS in .vue files, TypeScript goes through vtsls + @vue/typescript-plugin
local vue_language_server_path = vim.fn.stdpath "data"
  .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

vim.lsp.config("vtsls", {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_language_server_path,
            languages = { "vue" },
            configNamespace = "typescript",
          },
        },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

local servers = {
  "html",
  "cssls",
  "pyright",
  "ruff",
  "clangd",
  "eslint",
  "gopls",
  "vtsls",
  "vue_ls",
}
vim.lsp.enable(servers)
