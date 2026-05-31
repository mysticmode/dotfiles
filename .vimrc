set nocompatible

call plug#begin('~/.vim/plugged')
" Actual plugins
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
call plug#end()

" Important!!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest

set laststatus=2
set t_Co=256
set encoding=utf-8
set autoindent
set magic
set number
set scrolloff=3
set sidescroll=3
set ruler
set cc=80
set nowrap
set ignorecase
set smartcase
set splitbelow
set hidden
set notimeout
set incsearch
set showmatch
set hlsearch
set mouse=a
set noswapfile
set nofoldenable
set lazyredraw

syntax enable
