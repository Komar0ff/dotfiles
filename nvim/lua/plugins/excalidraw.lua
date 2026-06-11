return { 
  "marcocofano/excalidraw.nvim", 
  event="VeryLazy",
  config = function()
        require("excalidraw").setup(opts)
    end
}
