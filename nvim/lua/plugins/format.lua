-- lua/plugins/format.lua
return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = {
      formatters_by_ft = {
        solidity = { 'forge_fmt' },
        rust     = { 'rustfmt' },
        cpp      = { 'clang_format' },
        c        = { 'clang_format' },
      },
      format_on_save = { timeout_ms = 2000, lsp_format = 'fallback' },
      formatters = {
        forge_fmt = { command = 'forge', args = { 'fmt', '--raw', '-' }, stdin = true },
      },
    },
  },
  {
    'mfussenegger/nvim-lint',
    event = 'BufReadPre',
    config = function()
      local lint = require('lint')
      lint.linters_by_ft = { solidity = { 'solhint' } }
      lint.linters.solhint.cmd = '/Users/binary.reptile/.nvm/versions/node/v24.14.0/bin/solhint'
      vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost' }, {
        callback = function() require('lint').try_lint() end,
      })
    end,
  },
}
