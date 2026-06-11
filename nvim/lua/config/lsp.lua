-- Внешний вид диагностики
vim.diagnostic.config({
  virtual_text = { prefix = "●" },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = { border = "rounded", source = "if_many" },
})

-- Биндинги при подключении LSP к буферу
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local opts = function(desc) return { buffer = bufnr, desc = desc } end
    local map = vim.keymap.set

    -- Навигация
    map("n", "gd", vim.lsp.buf.definition,      opts("Definition"))
    map("n", "gi", vim.lsp.buf.implementation,  opts("Implementation"))
    map("n", "gr", vim.lsp.buf.references,      opts("References"))
    map("n", "gt", vim.lsp.buf.type_definition, opts("Type definition"))

    -- Документация
    map("n", "K", vim.lsp.buf.hover, opts("Hover"))

    -- Действия
    map("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename"))
    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts("Code action"))
    map("n", "<leader>=", function() vim.lsp.buf.format({ async = true }) end, opts("Format"))

    -- Диагностика
    map("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, opts("Prev diagnostic"))
    map("n", "]d", function() vim.diagnostic.jump({ count = 1 })  end, opts("Next diagnostic"))
    map("n", "<leader>e", vim.diagnostic.open_float, opts("Diagnostic float"))
  end,
})
