require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "q", "<nop>", { desc = "Disable macro recording" })
map('n', '<leader>s', 'ciw""<Esc>P', { desc = 'Wrap word in double quotes' })
map('n', '<leader>U', 'gUiw', { desc = 'Upper case word' })
map('n', '<leader>u', 'guiw', { desc = 'Lower case word' })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
