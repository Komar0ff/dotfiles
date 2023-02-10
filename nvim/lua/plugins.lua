return {
    {
      "catppuccin/nvim" ,
      name = "catppuccin" ,
      event = "VimEnter" ,
      config = function()
                vim.cmd([[colorscheme catppuccin]])
               end,
      dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },

    -- Highlight URLs inside vim
    { "itchyny/vim-highlighturl", event = "VimEnter" },

    -- This plugin adds indentation guides to all lines (including empty lines).
    { "lukas-reineke/indent-blankline.nvim", event = "VimEnter" },

    -- Automatic insertion and deletion of a pair of characters
    { "Raimondi/delimitMate", event = "InsertEnter" },

    -- Comment plugin
    { "tpope/vim-commentary", event = "VimEnter" },

    -- Autosave files on certain events
    { "907th/vim-auto-save", event = "InsertEnter" },

    -- Git command inside vim
    { "tpope/vim-fugitive" },

    -- Show git change (change, delete, add) signs in vim sign column
    { "lewis6991/gitsigns.nvim" },

    -- Plugin to manipulate character pairs quickly
    { "tpope/vim-surround", event = "VimEnter" },

    { "nvim-telescope/telescope.nvim", cmd = "Telescope", dependencies = { { "nvim-lua/plenary.nvim" } }},

    -- improves netrw
    { "tpope/vim-vinegar", event = 'VimEnter' },

    -- Snippet engine and snippet template
    --{ "SirVer/ultisnips", event = "InsertEnter" }
    --{ "honza/vim-snippets", dependencies = "ultisnips" }
}
