-- lua/plugins/lsp.lua
return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    vim.lsp.config('*', {
      capabilities = require('blink.cmp').get_lsp_capabilities(),
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(ev)
        local map = function(k, fn, d)
          vim.keymap.set('n', k, fn, { buffer = ev.buf, desc = d })
        end
        map('gd', vim.lsp.buf.definition,     'Definition')
        map('gr', vim.lsp.buf.references,      'References')
        map('gi', vim.lsp.buf.implementation, 'Implementation')
        map('K',  vim.lsp.buf.hover,           'Hover')
        map('<leader>rn', vim.lsp.buf.rename,      'Rename')
        map('<leader>ca', vim.lsp.buf.code_action, 'Code action')
      end,
    })

    vim.lsp.config('clangd', {
      cmd = { 'clangd', '--background-index', '--clang-tidy',
              '--header-insertion=iwyu', '--offset-encoding=utf-16' },
      root_markers = { 'compile_commands.json', 'CMakeLists.txt', '.clangd', '.git' },
    })
    vim.lsp.config('solidity_ls_nomicfoundation', {
      cmd = {
        '/Users/binary.reptile/.nvm/versions/node/v24.14.0/bin/nomicfoundation-solidity-language-server',
        '--stdio',
      },
      root_markers = { 'foundry.toml', 'hardhat.config.ts', '.git' },
    })

    vim.lsp.enable({ 'clangd', 'solidity_ls_nomicfoundation' })
  end,
}
