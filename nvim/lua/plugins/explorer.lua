-- File explorer
return {
  'stevearc/oil.nvim',
  event = "VimEnter",
  opts = {
    delete_to_trash = true,
    float = {
      padding = 5,
      max_width = 120,
      override = function(conf)
        return conf
      end,
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" }
}
