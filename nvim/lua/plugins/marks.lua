return {
  'jameswolensky/marker-groups.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  cmd = {
    'MarkerAdd', 'MarkerGroupsView', 'MarkerGroupsCreate',
    'MarkerGroupsList', 'MarkerGroupsSelect',
  },
  keys = {
    { 'ma',  ':MarkerAdd ',                 mode = { 'n', 'v' }, desc = 'Добавить заметку' },
    { 'mgc', ':MarkerGroupsCreate',                              desc = 'Новая тема' },
    { 'md',  '<cmd>MarkerRemove<cr>',       mode = { 'n', 'v' }, desc = 'Удалить заметку' },
    { 'mgd', ':MarkerGroupsDelete',                              desc = 'Удалить тему' },
    { 'mv',  '<cmd>MarkerGroupsView<cr>',                        desc = 'Drawer' },
    { 'mgs', '<cmd>MarkerGroupsSelect<cr>',                      desc = 'Сменить тему' },
    { 'mgl', '<cmd>MarkerGroupsList<cr>',                        desc = 'Список тем' },
  },
  config = function()
    require('marker-groups').setup({
      picker = 'telescope',
      context_lines = 3,
      max_annotation_display = 80,   -- заметки обычно длиннее, чем severity-метка
      drawer_config = { width = 72, side = 'right', border = 'rounded' },
    })
  end,
}
