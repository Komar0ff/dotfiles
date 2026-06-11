return {
  'saghen/blink.cmp',
  version = '1.*',
  lazy = false,
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    snippets = { preset = 'default' },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
    signature = { enabled = true },
  },
}
