return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = {
      search = { enabled = true },
      char = { enabled = true },
    },
  },
  keys = {
    { "w", mode = { "n" }, function() require("flash").jump() end, desc = "Flash" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  },
}
