" Base
syntax on
let mapleader = " "

set nowrap
set exrc
set secure
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nocompatible
set hlsearch
set hidden
set encoding=UTF-8
set nu
set smartcase
set noswapfile
set incsearch
set guifont="Fira Code"
set number relativenumber

call plug#begin(expand('~/.vim/plugged'))

" Highlights/Theme plugins
Plug 'ap/vim-css-color'
Plug 'arcticicestudio/nord-vim'

" Search plugins
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Javascript/Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact'] }

" Other plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'wellle/context.vim'
Plug 'joeytwiddle/sexy_scroller.vim'
Plug 'tpope/vim-commentary'
Plug '907th/vim-auto-save'
Plug 'ton/vim-bufsurf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'AndrewRadev/tagalong.vim'

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'
let g:airline_section_z = "%p%% ☠ %l/%L"

call plug#end()

autocmd BufNewFile,BufRead *.tsx,*.jsx, set filetype=typescript.tsx
let g:auto_save = 1

" Theme
colorscheme nord
set termguicolors


" General
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
nnoremap [<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <leader>, :noh<cr>
noremap <leader>y "*y <CR>
nmap <silent><leader>q :q <CR>
map <Leader> <Plug>(easymotion-prefix)

" Netrw
let g:netrw_banner = 0
let g:netrw_localrmdir="mv ~/.Trash/"
nmap <silent><leader>e :Explore <CR>
nmap <leader>nd :!rm -fr

" Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>

" Split screen moves
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>

" CocSearch
nmap <leader>d <Plug>(coc-definition)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Search file/string
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>s :Rg -w<space>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Buffer
nmap <leader>l :Buffers<CR>
nmap ]b <Plug>(buf-surf-forward)
nmap [b <Plug>(buf-surf-back)

" Other
nmap <leader>m :Marks<CR>
nmap <leader>g :Commits<CR>
nmap <leader>c :BCommits<CR>
