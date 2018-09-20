set nocompatible " fuck off vi

colorscheme neodark
let g:neodark#terminal_transparent = 1

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'skywind3000/asyncrun.vim'
Plug 'conornewton/vim-pandoc-markdown-preview'
Plug 'conornewton/vim-latex-preview'

call plug#end()


filetype plugin on
filetype on
syntax on

set number                  "show line number

set encoding=UTF-8

"shows trailing spaces as dots
set list
" not working properly
set listchars=tab:≫\ ,trail:·

set tabstop=4               "tab stuff
set shiftwidth=4
set expandtab
set softtabstop=4

"escape insert mode
inoremap jj <ESC>
noremap zz :w<CR>

"do not convert tabs to spaces in make files
autocmd FileType make setlocal noexpandtab

"use natural keys for movement
noremap ; l
noremap l k
noremap k j
noremap j h


let g:md_pdf_viewer = "mupdf"
let g:latex_pdf_viewer = "mupdf"
let g:latex_engine = "xelatex"

inoremap ( ()<Left>
inoremap " ""<Left>
inoremap { {}<Left>

"set .tex files filetype to tex
autocmd BufNewFile,BufRead *.tex set filetype=tex


nnoremap <F8> :setlocal expandtab!<CR>
nnoremap <F7> :setlocal wrap!<CR>
