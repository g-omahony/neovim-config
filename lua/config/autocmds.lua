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

-- vim.api.nvim_create_user_command("RunNearestSpec", function()
--   local specPath = vim.fn.expand("%") .. ":" .. vim.api.nvim_win_get_cursor(0)[1]
--   local runCommand = 'docker exec -it kitman-lde-medinah bash -c "bundle exec rspec ' .. specPath .. '"'
--   require("FTerm").run(runCommand)
-- end, { bang = true })
--
-- vim.api.nvim_create_user_command("RunThisSpec", function()
--   local specPath = vim.fn.expand("%")
--   local runCommand = 'docker exec -it kitman-lde-medinah bash -c "bundle exec rspec ' .. specPath .. '"'
--   require("FTerm").run(runCommand)
-- end, { bang = true })
--
-- vim.api.nvim_create_user_command("RunSpecFolder", function()
--   local specPath = vim.fn.expand("%:h")
--   local runCommand = 'docker exec -it kitman-lde-medinah bash -c "bundle exec rspec ' .. specPath .. '"'
--   require("FTerm").run(runCommand)
-- end, { bang = true })
--
-- vim.api.nvim_create_user_command("ShowRSpecConfig", function()
--   local path = vim.fn.stdpath("data") .. "/lde-rspec.json"
--   local file = io.open(path, "r")
--   if file == nil then
--     print("no file present")
--   else
--     local config = assert(vim.fn.json_decode(file:read()))
--     print(config.service)
--   end
-- end, { bang = true })

vim.api.nvim_create_user_command("ShowMenu", function()
  local handle = io.popen('docker ps --filter "name=kitman-lde" --format "{{.Names}}"')
  local result = handle:read("*a")
  handle:close()
  local all_services = {}
  for line in result:gmatch("[^\r\n]+") do
    table.insert(all_services, line.sub(line, 12, -1))
  end

  local services = { "medinah", "console", "athlete-api" }
  print(#services)
  for k, v in pairs(services) do
    print(k, v)
  end
  print("------------------------")
  print(#all_services)
  for k, v in pairs(all_services) do
    print(k, v)
  end
end, { bang = true })
