" Vim Plug

call plug#begin('~/.vim/plugged')

"utility
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

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

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" Go syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

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

autocmd FileType c setlocal shiftwidth=2 softtabstop=2 expandtab

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" show the function signature for a given routine
autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
" show the interfaces a type implements
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
" describe the definition of a given type
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
" see the callers of a given function
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)
" find all references of a given type/function in the codebase
nmap <leader>cr <Plug>(coc-references)

" go to definition or go back
nmap <C-a> <C-o>
nmap <C-d> <Plug>(coc-definition)

" refactor with renaming Go code
nmap <leader>r <Plug>(coc-rename)

" fzf
nnoremap <C-p> :Files<Cr>
" the_silver_searcher
nnoremap <C-g> :Ag<Cr>
