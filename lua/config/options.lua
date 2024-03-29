-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.timeoutlen = 400
vim.o.statuscolumn = "%l %r %s"
-- vim.g.gruvbox_baby_transparent_mode = true
vim.g.gruvbox_baby_telescope_theme = 1
