return {
  "fedepujol/move.nvim",
  event = "BufReadPost",
  opts = {
    line = { enable = true, indent = true },
    block = { enable = true, indent = true },
    word = { enable = false }, 
    char = { enable = false },
  },
  keys = {
    { "fj", ":MoveLine(1)<CR>",  mode = "n", desc = "Move line down",  silent = true },
    { "fk", ":MoveLine(-1)<CR>", mode = "n", desc = "Move line up",    silent = true },

    { "J", ":MoveBlock(1)<CR>",   mode = "v", desc = "Move block down",  silent = true },
    { "K", ":MoveBlock(-1)<CR>",  mode = "v", desc = "Move block up",    silent = true },
    { "fk", ":MoveHBlock(-1)<CR>", mode = "v", desc = "Move block left",  silent = true },
    { "fj", ":MoveHBlock(1)<CR>",  mode = "v", desc = "Move block right", silent = true },
  },
}
