local keymap = vim.keymap
local hop = require"hop"
hop.setup {
  case_insensitive = true,
  char2_fallback_key = "<CR>",
  quit_key = "<Esc>",
}

local directions = require"hop.hint".HintDirection

keymap.set("n", "<leader>b", "", {
  callback = function()
    hop.hint_words({ direction = directions.BEFORE_CURSOR })
  end,
})

keymap.set("n", "<leader>w", "", {
  callback = function()
    hop.hint_words({ direction = directions.AFTER_CURSOR })
  end,
})
