" lsp bindings

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

nmap <leader>cl <cmd>LspInfo<cr>
nmap <leader>d  <cmd>Telescope lsp_definitions<cr>
nmap <leader>gr  <cmd>Telescope lsp_references<cr>
nmap <leader>gs  <cmd>Telescope git_status<cr>

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

