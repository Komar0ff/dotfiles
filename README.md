# Поиск и git
brew install ripgrep fd          # ripgrep (rg) обязателен для Telescope live_grep
brew install lazygit            

# C / C++
brew install llvm                # clangd, clang-format, clang-tidy
brew install cmake               # сборка C++ проектов + генерация compile_commands.json
brew install boost               # нужен Eth C++ проектам (solc/aleth и т.п.)

# опционально
brew install bear                # генерация compile_commands.json для не-CMake проектов
brew install durdraw            


npm i -g @nomicfoundation/solidity-language-server   # Solidity LSP (навигация, автодополнение)
npm i -g solhint                                     # Solidity-линтер

which nomicfoundation-solidity-language-server
which solhint

rustup component add rust-analyzer   
rustup component add clippy          

curl -L -o ~/Downloads/codelldb.vsix \
  https://github.com/vadimcn/codelldb/releases/latest/download/codelldb-darwin-arm64.vsix

mkdir -p ~/.local/share/codelldb
unzip ~/Downloads/codelldb.vsix -d ~/.local/share/codelldb

ls ~/.local/share/codelldb/extension/adapter/codelldb
ls ~/.local/share/codelldb/extension/lldb/lib/liblldb.dylib

xattr -dr com.apple.quarantine ~/.local/share/codelldb
