return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'Amansingh-afk/milli.nvim' },
  opts = function()
    vim.opt.termguicolors = true
    local splash = require('milli').load({ splash = 'robot' })
    return {
      theme = 'hyper',
      config = {
        header = splash.frames[1],
        shortcut = {
          { desc = '  Files',      group = 'Label',           action = 'Telescope find_files', key = 'f' },
          { desc = '│ Grep',       group = 'DiagnosticHint',  action = 'Telescope live_grep',  key = 'g' },
          { desc = '│ Config',     group = 'DiagnosticInfo',  action = 'edit $MYVIMRC',        key = 'c' },
          { desc = '| Lazy',      group = '@property',        action = 'Lazy',                 key = 'l' },
        },
        project = { enable = false, limit = 8, icon = '🐸', label = 'Projects', action = 'Telescope find_files cwd=' },
        mru = { enable = true, limit = 10, icon = '', label = ' :: Recent files ::', cwd_only = true },
        packages = { enable = true },
        footer = {'', 'See you, console Cowboy...'},
      },
    }
  end,
  config = function(_, opts)
    require('dashboard').setup(opts)
    require('milli').dashboard({ splash = 'robot', loop = true })
  end,
}
