return {
    -- For live_grep to work, ripgrep must be additionally installed on the system
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim' }
}
