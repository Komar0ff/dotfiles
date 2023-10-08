-- test
local map = vim.keymap.set

-- General
map("n", "<C-p>", "<Up>", {remap = true})
map("n", "<C-n>", "<Down>", {remap = true})
map("n", "<leader>q", ":q<cr>", {silent = true})

map("n", "[<space>", ":<c-u>put =repeat(nr2char(10), v:count1)<cr>", {remap = true})
map("n", ",", "<cmd>noh<cr>")
map("n", "<leader>y", '"*y', {silent = true})

-- Netrw
map("n", "<leader>e", "<cmd>Explore<cr>", {silent = true})

-- Tabs
map("n", "tn", "<cmd>tabnew<cr>", {remap = true})
map("n", "tc", "<cmd>tabclose<cr>", {remap = true})
map("n", "to", "<cmd>tabonly<cr>", {remap = true})

-- Split screen moves
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
