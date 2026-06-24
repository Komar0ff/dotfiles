-- перед использованием прожать brew install lazygit
return {
  'kdheepak/lazygit.nvim',
  cmd = { 'LazyGit', 'LazyGitCurrentFile', 'LazyGitFilter', 'LazyGitFilterCurrentFile' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>gg', '<cmd>LazyGit<cr>',            desc = 'LazyGit' },
    { '<leader>gf', '<cmd>LazyGitCurrentFile<cr>', desc = 'LazyGit (текущий файл)' },
  },
}
