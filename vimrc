set nocompatible                " vi compatible mode off

syntax enable                   "enable syntax highlighting
"set smartindent
"set autoindent
colors codeschool               "set sytax highlighting theme

set number                      "enable line numbers

set tabstop=2 shiftwidth=2      "the size of a tab is 2 spaces

set expandtab                   "inserts spaces instead of tabs
"set nowrap                     "don't wrap lines

set encoding=utf-8
set showcmd                     " display incomplete commands

set relativenumber              " relative line numbers

" ignorecase and smartcase together make Vim deal with case-sensitive search intelligently. If you search for an all-lowercase string your search will be case-insensitive, but if one or more characters is uppercase the search will be case-sensitive. Most of the time this does what you want.
set ignorecase
set smartcase


let mapleader = ","             " remap the leader key from "\" to ","

" toggle relativenumber with ,n or <leader>n
nnoremap <silent><leader>n :set rnu! rnu? <cr>

                                "https://github.com/tpope/vim-pathogen
execute pathogen#infect()       
filetype plugin indent on       "load file type plugins + indentation



"start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

"make sure .md files are treated as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"enable vim-airline status bar by default
set laststatus=2

"vim-airline
"let g:airline_powerline_fonts = 1

"enable tabline from airline
let g:airline#extensions#tabline#enabled = 1

" Remap buffer Ex commands
nnoremap <silent> [b :bprevious
nnoremap <silent> ]b :bnext
nnoremap <silent> [B :bfirst
nnoremap <silent> ]B :blast
