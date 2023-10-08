local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- if lazyvim is not available
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  defaults = { lazy = true },
  install = { colorscheme = { "catppuccin" } },
  change_detection = { notify = false },
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
