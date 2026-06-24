return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory', 'DiffviewToggleFiles' },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>',          desc = 'Diffview: открыть' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Diffview: история файла' },
    { '<leader>gH', '<cmd>DiffviewFileHistory<cr>',   desc = 'Diffview: история репо' },
    { '<leader>gx', '<cmd>DiffviewClose<cr>',         desc = 'Diffview: закрыть' },
  },
  opts = {
    enhanced_diff_hl = true,
  },
}
