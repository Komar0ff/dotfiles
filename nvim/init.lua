require "plugins"

local core_files = {
  "globals.lua", -- some global settings
  "options.vim", -- setting options in nvim
  "mappings.vim", -- all the user-defined mappings
}

-- source all the core config files
for i=1, #core_files do
  local path = string.format("%s/core/%s", vim.fn.stdpath("config"), core_files[i])
  vim.cmd("source " .. path)
end
