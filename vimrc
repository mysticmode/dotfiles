syntax on
set background=dark
set laststatus=2
set t_Co=256
set encoding=utf-8
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

autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab

" copy-paste
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
