vim.lsp.start({
    name = 'my-server-name',
      cmd = {'vim-language-server'},
        root_dir = vim.fs.dirname(vim.fs.find({'setup.py', 'pyproject.toml'}, { upward = true })[1]),
      })
