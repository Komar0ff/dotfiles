-- lua/plugins/dap.lua
return {
  'mfussenegger/nvim-dap',
  event = 'VeryLazy',
  dependencies = {
    { 'rcarriga/nvim-dap-ui', dependencies = { 'nvim-neotest/nvim-nio' } },
    'theHamsta/nvim-dap-virtual-text',
  },
  keys = {
    { '<leader>db', function() require('dap').toggle_breakpoint() end, desc = 'DAP: breakpoint' },
    { '<leader>dc', function() require('dap').continue() end,          desc = 'DAP: continue' },
    { '<leader>di', function() require('dap').step_into() end,         desc = 'DAP: step into' },
    { '<leader>do', function() require('dap').step_over() end,         desc = 'DAP: step over' },
    { '<leader>dO', function() require('dap').step_out() end,          desc = 'DAP: step out' },
    { '<leader>dt', function() require('dap').terminate() end,         desc = 'DAP: terminate' },
    { '<leader>du', function() require('dapui').toggle() end,          desc = 'DAP: UI' },
  },
  config = function()

    local dap, dapui = require('dap'), require('dapui')
    dapui.setup()
    require('nvim-dap-virtual-text').setup()

    dap.listeners.after.event_initialized['dapui_config']  = function() dapui.open() end
    dap.listeners.before.event_terminated['dapui_config']  = function() dapui.close() end
    dap.listeners.before.event_exited['dapui_config']      = function() dapui.close() end

    -- знаки брейкпоинтов
    vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DiagnosticError' })
    vim.fn.sign_define('DapStopped',    { text = '▶', texthl = 'DiagnosticWarn' })
  end,
}
