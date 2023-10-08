return {
  "nvim-treesitter/nvim-treesitter",
  event = "BufEnter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "typescript",
      "javascript",
      "bash",
      "html",
      "css",
      "markdown",
      "python",
      "vim",
      "yaml",
      "tsx",
      "json",
      "lua",
      "regex",
    },
    ignore_install = {},
    highlight = { enable = true },
  }
}
