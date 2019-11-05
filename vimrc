
let mapleader = "," " remap the leader key from "\" to ","
noremap \ ,

" auto install plug.vim if needed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()


set number "enable line numbers
set norelativenumber
" toggle relativenumber with ,n or <leader>n
nnoremap <silent><leader>n :set rnu! rnu? <cr>


set t_Co=256
colors codeschool               "set sytax highlighting theme

"t invisible chars colors
"hi NonText ctermfg=59 ctermbg=NONE cterm=NONE guifg=##a52a2a guibg=#232c31 gui=NONE
hi NonText ctermfg=202
hi SpecialKey ctermfg=202


" leader v key opens vimrc
nmap <leader>v :edit $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd")
   autocmd bufwritepost .vimrc source $MYVIMRC
endif

" ignorecase and smartcase together make Vim deal with case-sensitive search intelligently. If you search for an all-lowercase string your search will be case-insensitive, but if one or more characters is uppercase the search will be case-sensitive. Most of the time this does what you want.
set ignorecase
set smartcase

set tabstop=2 shiftwidth=2      "the size of a tab is 2 spaces
set expandtab                   "inserts spaces instead of tabs
"set nowrap                     "don't wrap lines

" leader l key toggles command - set list
nmap <leader>l :set list!<CR>


" Remap buffer Ex commands
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>

" turn off the arrow keys to force using the home row (hjkl)
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

noremap [n :cnext<cr>
noremap [p :cprevious<cr>


noremap <leader>b :GoBuild<cr>
noremap <leader>r :GoRun<cr>
noremap <leader>t :GoTest<cr>
noremap <leader>tf :GoTestFunc<cr>
noremap <leader>tc :GoCoverageToggle<cr>
noremap <leader>bc :GoCoverageBrowser<cr>

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_decls_includes = "func,type"

"enable vim-airline status bar by default
set laststatus=2

"vim-airline
"let g:airline_powerline_fonts = 1

"enable tabline from airline
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='base16color'

