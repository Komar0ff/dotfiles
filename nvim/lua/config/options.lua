vim.g.mapleader = " "

-- window-scoped options
local wo = vim.wo

wo.wrap = true
wo.number = true
wo.relativenumber = true

-- options
local opt = vim.opt

opt.secure = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.smartcase = true
opt.compatible = false
opt.nu = true
opt.swapfile = false
opt.guifont = "Fira Code"
opt.completeopt = "menu,menuone,noselect"
