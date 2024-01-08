return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  event = 'VeryLazy',
  dependencies = { "nvim-lua/plenary.nvim", {
  'tomasky/bookmarks.nvim',
  config = function()
    require("bookmarks").setup({
      -- sign_priority = 8,  --set bookmark sign priority to cover other sign
      save_file = vim.fn.expand("$HOME/.bookmarks"), -- bookmarks save file path
      keywords = {
        -- You can just copy these from emoji keyboard in browser (since it's using same font)
        ["@t"] = "🔥", -- mark annotation startswith @t ,signs this icon as `Todo`
        ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
        ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
        ["@n"] = "🧠", -- mark annotation startswith @n ,signs this icon as `Note`
      },
      on_attach = function()
        local keymap = vim.keymap.set
        local bm = require("bookmarks")
        keymap("n", "mm", bm.bookmark_toggle, { desc = "# Toggle Emoji Bookmark" })
        keymap("n", "mi", bm.bookmark_ann, { desc = "# Change annotation" })
        keymap("n", "mc", bm.bookmark_clean, { desc = "# Clean all marks in buffer" })
        keymap("n", "mn", bm.bookmark_next, { desc = "# Jump to next mark in buffer" })
        keymap("n", "mp", bm.bookmark_prev, { desc = "# Jump to prev mark in buffer" })
        keymap("n", "mq", bm.bookmark_list, { desc = "# Show marked file list in quickfix window" })
        require("telescope").load_extension("bookmarks")
      end,
    })
  end,
}}
}
