-- lua/plugins/rust.lua
return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6',
    lazy = false,  
    init = function()
      local ext = vim.env.HOME .. '/.local/share/codelldb/extension/'
      local codelldb = ext .. 'adapter/codelldb'
      local liblldb = ext .. 'lldb/lib/liblldb.dylib'  -- .dylib для macOS

      vim.g.rustaceanvim = {
        dap = {
          adapter = require('rustaceanvim.config').get_codelldb_adapter(codelldb, liblldb),
        },
        server = {
          capabilities = require('blink.cmp').get_lsp_capabilities(),
          default_settings = {
            ['rust-analyzer'] = {
              cargo = { allFeatures = true },
              check = { command = 'clippy' },
            },
          },
        },
      }
    end,
  },
  {
    'saecki/crates.nvim',
    event = 'BufRead Cargo.toml',
    config = function() require('crates').setup() end,
  },
}
