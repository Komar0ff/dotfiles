return {
    { "glepnir/dashboard-nvim", event = "VimEnter", cond = firenvim_not_active, }, 
    { 
      "catppuccin/nvim" , 
      name = "catppuccin" , 
      event = "VimEnter" , 
      config = function()
                vim.cmd([[colorscheme catppuccin]])
               end,
      dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }, 

    ---- { "github/copilot.vim", lazy = false },

    ------This tiny plugin adds vscode-like pictograms
    -- { "onsails/lspkind-nvim", event = "VimEnter" },

    ---- auto-completion engine
    -- { "hrsh7th/nvim-cmp", after = "lspkind-nvim" },

    ---- nvim-cmp completion sources
    -- { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
    -- { "hrsh7th/cmp-path", after = "nvim-cmp" },
    -- { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
    -- { "hrsh7th/cmp-omni", after = "nvim-cmp" },
    -- { "quangnguyen30192/cmp-nvim-ultisnips", after = { "nvim-cmp", "ultisnips" } },

    ------ nvim-lsp configuration (it relies on cmp-nvim-lsp, so it should be loaded after cmp-nvim-lsp).
    -- { "neovim/nvim-lspconfig", after = "cmp-nvim-lsp" },

    -- {
    --   "nvim-treesitter/nvim-treesitter",
    --   event = "BufEnter",
    --   run = ":TSUpdate",
    -- },

    ---- Super fast buffer jump
    {
      "phaazon/hop.nvim",
      branch = 'v2',
      event = "VimEnter",
      config = function()
        vim.defer_fn(function()
          require("config.nvim_hop")
        end, 2000)
      end,
    },

    { "nvim-telescope/telescope.nvim", cmd = "Telescope", dependencies = { { "nvim-lua/plenary.nvim" } }},

    --{
    --  "nvim-lualine/lualine.nvim",
    --  event = "VimEnter",
    --  cond = firenvim_not_active,
    --  config = [[require('config.statusline')]],
    --}

    { "akinsho/bufferline.nvim", event = "VimEnter", cond = firenvim_not_active, config = [[require('config.bufferline')]] },

    {
      "lukas-reineke/indent-blankline.nvim",
      event = "VimEnter",
      config = [[require('config.indent-blankline')]],
    },

    ---- Highlight URLs inside vim
    { "itchyny/vim-highlighturl", event = "VimEnter" },

    ---- Snippet engine and snippet template
    --{ "SirVer/ultisnips", event = "InsertEnter" }
    --{ "honza/vim-snippets", after = "ultisnips" }

    ---- Automatic insertion and deletion of a pair of characters
    { "Raimondi/delimitMate", event = "InsertEnter" },

    ---- Comment plugin
    { "tpope/vim-commentary", event = "VimEnter" },

    ---- Autosave files on certain events
    { "907th/vim-auto-save", event = "InsertEnter" },

    ---- Handy unix command inside Vim (Rename, Move etc.)
    --{ "tpope/vim-eunuch", cmd = { "Rename", "Delete" } }

    ---- Switch keyboard layouts
    --{ "lyokha/vim-xkbswitch", event = { "InsertEnter" } }


    ---- Git command inside vim
    { "tpope/vim-fugitive", event = "User InGitRepo", config = [[require('config.fugitive')]] },


    ---- Show git change (change, delete, add) signs in vim sign column
    { "lewis6991/gitsigns.nvim", config = [[require('config.gitsigns')]] },


    ---- Plugin to manipulate character pairs quickly
    { "tpope/vim-surround", event = "VimEnter" },

    ---- The missing auto-completion for cmdline!
    { "gelguy/wilder.nvim", opt = true, setup = [[vim.cmd('packadd wilder.nvim')]] },
}
