-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "i" }, "jk", "<esc>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i" }, "kj", "<esc>", { noremap = true, silent = true })
-- resize vertical left right
vim.keymap.set("n", "<M-Left>", "<cmd>vertical resize -2<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Right>", "<cmd>vertical resize +2<cr>", { noremap = true, silent = true })
