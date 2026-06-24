return {
  "error311/wayfinder.nvim",
  keys = {
    { "<leader>wf",  "<Plug>(WayfinderOpen)",      desc = "Wayfinder" },
    { "<leader>wto", "<Plug>(WayfinderTrailOpen)", desc = "Wayfinder Trail" },
  },
  opts = {
    performance = "fast",
    scope = {
      mode = "package",
      package_markers = { "foundry.toml", "remappings.txt", "Cargo.toml", ".git" },
    },
  },
}
