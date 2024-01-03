return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
          plugins = {
            kitty = {
              enabled = true,
              font = "+10", -- font size increment
            },
          }
        })
    end
}
