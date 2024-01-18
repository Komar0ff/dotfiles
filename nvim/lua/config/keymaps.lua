local map = vim.keymap.set

-- General
map("n", "<C-p>", "<Up>", {remap = true})
map("n", "<C-n>", "<Down>", {remap = true})
map("n", "q", ":q<cr>", {silent = true})
map("n", "j", "gj", {noremap = true})
map("n", "k", "gk", {noremap = true})

map("n", "[<space>", ":<c-u>put =repeat(nr2char(10), v:count1)<cr>", {remap = true})
map("n", ",", "<cmd>noh<cr>")

-- clipboard
map("n", "<leader>y", '"+y', {remap = true})
map("v", "<leader>y", '"+y', {remap = true})
map("n", "<leader>P", '"+p', {remap = true})

-- Tabs
map("n", "tn", "<cmd>tabnew<cr>", {remap = true})
map("n", "tc", "<cmd>tabclose<cr>", {remap = true})
map("n", "to", "<cmd>tabonly<cr>", {remap = true})

-- Split screen moves
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
map("n", "<C-v>", "<C-w>v <C-l>", { desc = "Add split window vertical", remap = true })
map("n", "<C-s>", "<C-w>s <C-j>", { desc = "Add split window horizontal", remap = true })

-- buffer workflow
map("n", "[b", "<cmd>bprevious<cr>")
map("n", "]b", "<cmd>bnext<cr>")
map("n", "<leader>bd", "<cmd>bdelete<cr>")
map("n", "[[", "<cmd> Telescope buffers <cr>", {noremap = true})

-- telescope keys
map("n", "ff",  "<cmd> Telescope find_files <cr>", {noremap = true})
map("n", "fw", "<cmd> Telescope live_grep <cr>", {noremap = true})
map("n", "fW", "<cmd> execute 'Telescope live_grep default_text=' . expand('<cword>')<cr>", {noremap = true})
map("n", "ml",         "<cmd> Telescope bookmarks list <cr>", {noremap = true})
map("n", "<leader>h",  "<cmd> Telescope help_tags <cr>", {noremap = true})
-- other lsp leymaps check in lsp/keymaps.lua

-- hop 
map("n", "w", "<cmd> HopWordAC <cr>")
map("n", "b", "<cmd> HopWordBC <cr>")

-- zen mode(on/off)
map("n", "Z", ":ZenMode <cr>")

-- oil
map("n", "E", "<cmd> Oil --float <cr>", { desc = "Open parent directory" })

--prettier
map("n", "<leader>p", "<Plug>(prettier-format)")

-- git
map("n", "gdo", "<cmd> DiffviewOpen<cr>")
map("n", "gfh", "<cmd> DiffviewFileHistory<cr>")
map("n", "fh", "<cmd> DiffviewFileHistory %<cr>")
map("n", "gm", "<cmd> GitMessenger<cr>")
map("n", "gc", "<cmd> Neogit commit<cr>")
map("n", "go", "<cmd> Neogit <cr>")


-- surround default keymaps
-- ys* - add 
-- ySS* - add to current line
-- ds* - delete 
-- cs* - change

-- bookmarks keymap check in telescope.lua file
-- todo keymaps check in todo.lua
