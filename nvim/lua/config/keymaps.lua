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

-- buffer workflow
map("n", "[b", "<cmd>bprevious<cr>")
map("n", "]b", "<cmd>bnext<cr>")


-- " General
-- cnoremap <C-p> <Up>
-- cnoremap <C-n> <Down>
-- nmap <silent><leader>q :q <CR>

-- nnoremap [<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>
-- nmap , :noh<cr>
-- noremap <leader>y "*y <CR>

-- " Netrw
-- nmap <silent><leader>e :Explore <CR>

-- " Tabs
-- nnoremap tn :tabnew<CR>
-- nnoremap tc :tabclose<CR>
-- nnoremap to :tabonly<CR>

-- " Split screen moves
-- nnoremap <C-J> <C-W><C-J>
-- nnoremap <C-K> <C-W><C-K>
-- nnoremap <C-H> <C-W><C-H>
-- nnoremap <C-L> <C-W><C-L>

-- nnoremap <leader>f <cmd>Telescope find_files<cr>
-- nnoremap <leader>lg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>b <cmd>Telescope buffers<cr>
-- nnoremap <leader>h <cmd>Telescope help_tags<cr>

-- nmap <leader>cl <cmd>LspInfo<cr>
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

-- " " Buffer
-- " nmap <leader>l :Buffers<CR>
-- " nmap ]b <Plug>(buf-surf-forward)
-- " nmap [b <Plug>(buf-surf-back)

-- " " Other
-- " nmap <leader>gc :Commits<CR> " check global commits
-- " nmap <leader>c :BCommits<CR> " check commits on local file
-- " nmap <leader>gb :Git blame<CR>
