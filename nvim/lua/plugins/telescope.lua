return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",   -- компилирует C-расширение для быстрого матчинга
    },
  },
  keys = {
    { "<leader>ff",  "<cmd>Telescope find_files<cr>",          desc = "Find files" },
    { "<leader>fg",  "<cmd>Telescope live_grep<cr>",           desc = "Live grep" },
    { "<leader>fw",  "<cmd>Telescope grep_string<cr>",         desc = "Live grep" },
    { "[[",          "<cmd>Telescope buffers<cr>",             desc = "Buffers" },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = { preview_width = 0.55 },
        width = 0.9,
        height = 0.85,
      },
      sorting_strategy = "ascending",
      prompt_prefix = "  ",
      selection_caret = "❯ ",
      path_display = { "smart" },
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
          ["<Esc>"] = "close",         -- сразу закрыть, а не уходить в normal
        },
      },
      file_ignore_patterns = {
        "%.git/",
        "node_modules/",
        "target/",
        "dist/",
        "%.lock",
      },
    },
    pickers = {
      find_files = {
        hidden = true,
        find_command = { "fd", "--type", "f", "--hidden", "--exclude", ".git" },
      },
      live_grep = {
        additional_args = { "--hidden" },
      },
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    pcall(telescope.load_extension, "fzf")  -- ускоренный матчинг
  end,
}
