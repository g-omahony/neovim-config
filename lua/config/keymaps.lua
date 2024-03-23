-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "i" }, "jk", "<esc>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i" }, "kj", "<esc>", { noremap = true, silent = true })
-- resize vertical left right
vim.keymap.set("n", "<M-Left>", "<cmd>vertical resize -2<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Right>", "<cmd>vertical resize +2<cr>", { noremap = true, silent = true })

vim.keymap.set("i", "<F12>", "binding.pry<ESC>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>m", "<cmd>:lua require('treesj').toggle()<cr>", { desc = "Toggle TreeSJ" })

vim.keymap.set(
  "n",
  "<leader>gd",
  "<cmd>:lua require('FTerm').run('gh dash')<cr>",
  { noremap = true, silent = true, desc = "gh dash" }
)

local wk = require("which-key")
-- FTerm
wk.register({
  t = {
    name = "terminal",
    o = { "<cmd>:lua require('FTerm').open()<cr>", "Open" },
    c = { "<cmd>:lua require('FTerm').close()<cr>", "Close" },
    e = { "<cmd>:lua require('FTerm').exit()<cr>", "Exit" },
    t = { "<cmd>:lua require('FTerm').toggle()<cr>", "Toggle" },
  },
}, { mode = "n", prefix = "<leader>" })
vim.keymap.set("t", "<leader>tt", '<C-\\><C-n><CMD>:lua require("FTerm").toggle()<CR>')

-- Harpoon
wk.register({
  h = {
    name = "harpoon",
    h = { "<cmd>:lua require('harpoon.mark').add_file()<cr>", "Mark this file" },
    m = { "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<cr>", "Menu" },
    j = { "<cmd>:lua require('harpoon.ui').nav_next()<cr>", "Navigate to next" },
    k = { "<cmd>:lua require('harpoon.ui').nav_prev()<cr>", "Navigate to previous" },
  },
}, { mode = "n", prefix = "<leader>" })

-- -- rspec
wk.register({
  r = {
    name = "rspec",
    n = { "<CMD>:lua require('lde-rspec').run_nearest_spec()<CR>", "Run nearest spec" },
    t = { "<CMD>:lua require('lde-rspec').run_this_spec()<CR>", "Run this file" },
    f = { "<CMD>:lua require('lde-rspec').run_spec_folder()<CR>", "Run this folder" },
    s = { "<CMD>:lua require('lde-rspec').select_service()<CR>", "Set the test service" },
  },
}, { mode = "n", prefix = "<leader>" })

-- -- lspsaga
wk.register({
  a = {
    name = "Lspsaga",
    c = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
    o = { "<cmd>Lspsaga outline<cr>", "Outline" },
    r = { "<cmd>Lspsaga rename<cr>", "Rename" },
    d = { "<cmd>Lspsaga goto_definition<cr>", "Lsp GoTo Definition" },
    f = { "<cmd>Lspsaga finder<cr>", "Lsp Finder" },
    p = { "<cmd>Lspsaga preview_definition<cr>", "Preview Definition" },
    s = { "<cmd>Lspsaga signature_help<cr>", "Signature Help" },
    w = { "<cmd>Lspsaga show_workspace_diagnostics<cr>", "Show Workspace Diagnostics" },
  },
}, { prefix = "<leader>" })
