-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Disable autoformat for ruby files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "ruby" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_user_command("RunNearestSpec", function()
  local specPath = vim.fn.expand("%") .. ":" .. vim.api.nvim_win_get_cursor(0)[1]
  local runCommand = 'docker exec -it kitman-lde-medinah bash -c "bundle exec rspec ' .. specPath .. '"'
  require("FTerm").run(runCommand)
end, { bang = true })

vim.api.nvim_create_user_command("RunThisSpec", function()
  local specPath = vim.fn.expand("%")
  local runCommand = 'docker exec -it kitman-lde-medinah bash -c "bundle exec rspec ' .. specPath .. '"'
  require("FTerm").run(runCommand)
end, { bang = true })

vim.api.nvim_create_user_command("RunSpecFolder", function()
  local specPath = vim.fn.expand("%:h")
  local runCommand = 'docker exec -it kitman-lde-medinah bash -c "bundle exec rspec ' .. specPath .. '"'
  require("FTerm").run(runCommand)
end, { bang = true })
