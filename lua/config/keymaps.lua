-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "i" }, "jk", "<esc>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i" }, "kj", "<esc>", { noremap = true, silent = true })
-- resize vertical left right
vim.keymap.set("n", "<M-Left>", "<cmd>vertical resize -2<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Right>", "<cmd>vertical resize +2<cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>hh", "<cmd>:lua require('harpoon.mark').add_file()<cr>", { desc = "Mark this file" })

vim.keymap.set("n", "<leader>hm", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Menu" })
vim.keymap.set("n", "<leader>hj", "<cmd>:lua require('harpoon.ui').nav_next()<cr>", { desc = "Navigate to next" })
vim.keymap.set("n", "<leader>hk", "<cmd>:lua require('harpoon.ui').nav_prev()<cr>", { desc = "Navigate to previous" })

-- FTerm
vim.keymap.set(
  "n",
  "<leader>to",
  "<cmd>:lua require('FTerm').open()<cr>",
  { noremap = true, silent = true, desc = "open" }
)
vim.keymap.set(
  "n",
  "<leader>tc",
  "<cmd>:lua require('FTerm').close()<cr>",
  { noremap = true, silent = true, desc = "close" }
)
vim.keymap.set(
  "n",
  "<leader>te",
  "<cmd>:lua require('FTerm').exit()<cr>",
  { noremap = true, silent = true, desc = "exit" }
)
vim.keymap.set(
  "n",
  "<leader>tt",
  "<cmd>:lua require('FTerm').toggle()<cr>",
  { noremap = true, silent = true, desc = "toggle" }
)
vim.keymap.set("t", "<leader>tt", '<C-\\><C-n><CMD>:lua require("FTerm").toggle()<CR>')

-- rspec
vim.keymap.set(
  "n",
  "<leader>rn",
  "<CMD>:lua require('lde-rspec').run_nearest_spec()<CR>",
  { noremap = true, silent = true, desc = "Run nearest spec" }
)
vim.keymap.set(
  "n",
  "<leader>rt",
  "<CMD>:lua require('lde-rspec').run_this_spec()<CR>",
  { noremap = true, silent = true, desc = "Run this file" }
)
vim.keymap.set(
  "n",
  "<leader>rf",
  "<CMD>:lua require('lde-rspec').run_spec_folder()<CR>",
  { noremap = true, silent = true, desc = "Run this folder" }
)
vim.keymap.set(
  "n",
  "<leader>rs",
  "<CMD>:lua require('lde-rspec').select_service()<CR>",
  { noremap = true, silent = true, desc = "Set the test service" }
)
