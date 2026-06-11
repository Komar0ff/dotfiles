return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          workspace = {
            checkThirdParty = false,
            library = vim.api.nvim_get_runtime_file("", true),
          },
          diagnostics = { globals = { "vim" } },
          telemetry = { enable = false },
        },
      },
    })

    vim.lsp.config("rust_analyzer", {
      settings = {
        ["rust-analyzer"] = {
          check = { command = "clippy" },
          cargo = { allFeatures = true },
        },
      },
    })

    vim.lsp.config("solidity_ls_nomicfoundation", {
      settings = {},
      root_markers = { "foundry.toml", "remappings.txt", ".git" },
    })

    vim.lsp.enable({
      "lua_ls",
      "rust_analyzer",
      "ts_ls",
      "clangd",
      "solidity_ls_nomicfoundation",
    })

    require("config.lsp")
  end,
}
