local map = vim.keymap.set

-- General
map("n", "<C-p>", "<Up>", {remap = true})
map("n", "<C-n>", "<Down>", {remap = true})
map("n", "<leader>q", ":q<cr>", {silent = true})
map("n", "j", "gj", {noremap = true}) -- for wrapped strings
map("n", "k", "gk", {noremap = true})

map("n", "[<space>", ":<c-u>put =repeat(nr2char(10), v:count1)<cr>", {remap = true})
map("n", ",", "<cmd>noh<cr>")
map("n", "<leader>y", '"*y', {silent = true})

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

-- telescope keys
map("n", "<leader>f", "<cmd> Telescope find_files <cr>", {noremap = true})
map("n", "<leader>lg", "<cmd> Telescope live_grep <cr>", {noremap = true})
map("n", "<leader>b", "<cmd> Telescope buffers <cr>", {noremap = true})
map("n", "<leader>h", "<cmd> Telescope help_tags <cr>", {noremap = true})

-- hop 
map("n", "w", ":HopWordAC <cr>") 
map("n", "b", ":HopWordBC <cr>") 

-- zen mode
map("n", "<leader>z", ":ZenMode <cr>") 


-- surround default keymaps
-- ys* - add 
-- ySS* - add to current line
-- ds* - delete 
-- cs* - change


-- nmap <leader>d  <cmd>Telescope lsp_definitions<cr>
-- nmap <leader>gr  <cmd>Telescope lsp_references<cr>
-- nmap <leader>gs  <cmd>Telescope git_status<cr>

-- nmap <leader>p :PrettierAsync<cr>

-- " CocSearch
-- " nmap <leader>d <Plug>(coc-definition)
-- " nmap <leader>rr <Plug>(coc-rename)
-- " nmap <leader>gr <Plug>(coc-references)

-- " nmap <silent> [g <Plug>(coc-diagnostic-prev)
-- " nmap <silent> ]g <Plug>(coc-diagnostic-next)

-- " " Search file/string
-- " nnoremap <leader>f :GFiles<CR>
-- " nnoremap <leader>s :Rg -w<space>
-- " nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

-- " " Other
-- " nmap <leader>gc :Commits<CR> " check global commits
-- " nmap <leader>c :BCommits<CR> " check commits on local file
-- " nmap <leader>gb :Git blame<CR>
