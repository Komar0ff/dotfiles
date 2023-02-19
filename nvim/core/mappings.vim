" General
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
nmap <silent><leader>q :q <CR>

nnoremap [<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nmap , :noh<cr>
noremap <leader>y "*y <CR>
" map <Leader> <Plug>(easymotion-prefix)

let g:winresizer_start_key = '<leader>x'

" Netrw
nmap <silent><leader>e :Explore <CR>

" Tabs
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap to :tabonly<CR>

" Split screen moves
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <leader>cl <cmd>LspInfo<cr>
nmap <leader>d  <cmd>Telescope lsp_definitions<cr>
nmap <leader>gr  <cmd>Telescope lsp_references<cr>

nmap <leader>p :PrettierAsync<cr>



" CocSearch
" nmap <leader>d <Plug>(coc-definition)
" nmap <leader>rr <Plug>(coc-rename)
" nmap <leader>gr <Plug>(coc-references)

" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " Search file/string
" nnoremap <leader>f :GFiles<CR>
" nnoremap <leader>s :Rg -w<space>
" nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" " Buffer
" nmap <leader>l :Buffers<CR>
" nmap ]b <Plug>(buf-surf-forward)
" nmap [b <Plug>(buf-surf-back)

" " Other
" nmap <leader>gc :Commits<CR> " check global commits
" nmap <leader>c :BCommits<CR> " check commits on local file
" nmap <leader>gb :Git blame<CR>

