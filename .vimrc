" Vim Plug

call plug#begin('~/.vim/plugged')

"utility
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

"accessiblities
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'

call plug#end()

syntax on
set background=dark
set laststatus=2
set t_Co=256
set encoding=utf-8

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
let g:NERDTreeFileLines = 1

colorscheme PaperColor

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
filetype on
set number
set ruler
set mouse=a
set noswapfile

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
