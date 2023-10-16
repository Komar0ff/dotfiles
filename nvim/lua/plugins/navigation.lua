local Util = require("utils")

return {
-- search/replace in multiple files
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
    -- stylua: ignore
    keys = {
      { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
    },
  },

  {
  "phaazon/hop.nvim",
  branch = "master",
  event = "VeryLazy",
  config = function()
    local keymap = vim.keymap
    local hop = require "hop"

    hop.setup {
      case_insensitive = true,
      char2_fallback_key = "<CR>",
      quit_key = "<C-[",
    }

    local directions = require"hop.hint".HintDirection

    keymap.set("n", "b", "", {
      callback = function()
        hop.hint_words({ direction = directions.BEFORE_CURSOR })
      end,
    })

    keymap.set("n", "w", "", {
      callback = function()
        hop.hint_words({ direction = directions.AFTER_CURSOR })
      end,
    })
  end
},

  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "VeryLazy",
    config = true,
    -- stylua: ignore
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
      { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
    },
  },
}
