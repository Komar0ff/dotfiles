require "utils"

-- Inspect something
function _G.inspect(item)
  vim.pretty_print(item)
end

vim.g.logging_level = "info"
vim.g.mapleader = ' '

-- Use English as main language
vim.cmd [[language en_US.UTF-8]]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
    })
    end
  vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("plugins", {
  defaults = { lazy = true },
  install = { colorscheme = { "catppuccin" } },
  checker = { enabled = true },
  performance = {
    rtp = {
     disabled_plugins = {
       "gzip",
       "matchit",
       "matchparen",
       "tarPlugin",
       "tohtml",
       "tutor",
       "zipPlugin",
      },
    },
 },
})
