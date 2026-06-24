return {
  {
    'p00f/clangd_extensions.nvim',
    ft = { 'c', 'cpp' },
    opts = { inlay_hints = { inline = true } },
  },
  {
    'Civitasv/cmake-tools.nvim',
    ft = { 'c', 'cpp', 'cmake' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      cmake_command = 'cmake',
      cmake_build_directory = 'build',
      cmake_generate_options = { '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON' },
      cmake_soft_link_compile_commands = true,
    },
  },
}
