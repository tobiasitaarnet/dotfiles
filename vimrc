"-------------------------------------------------------------------------------
" Vundle (MUST BE FIRST)
"-------------------------------------------------------------------------------

set nocompatible              " be iMproved, required for Vundle
filetype off                  " required, required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Custom plugins

Plugin 'vim-airline/vim-airline.git'     " adds airline
Plugin 'dhruvasagar/vim-table-mode'      " adds table support
Plugin 'sheerun/vim-polyglot'            " adds syntax support for languages
Plugin 'drewtempelmeyer/palenight.vim'   " color scheme
Plugin 'bronson/vim-trailing-whitespace' " highlights trailing whitespace
Plugin 'markonm/traces.vim'              " highlights patterns for RegEx
Plugin 'preservim/nerdtree'              " adds tree explorer

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"-------------------------------------------------------------------------------
" Color scheme and fonts
"-------------------------------------------------------------------------------

set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
set guifont=IBM_Plex_Mono:h12

"-------------------------------------------------------------------------------
" Color scheme and fonts
"-------------------------------------------------------------------------------

set nu                               " set numbering
syntax on                            " set syntax
set tabstop=2 shiftwidth=2 expandtab " tabs to spaces
set linebreak                        " automatic linebreaks
set tw=79                            " set text width to 79 chars
set encoding=utf-8                   " set default encoding to UTF-8
set clipboard=unnamed                " set clipboard to system
set incsearch                        " start searching at first character input

"-------------------------------------------------------------------------------
" Color scheme and fonts
"-------------------------------------------------------------------------------

" Remap escape to jk
inoremap jk <ESC>

" Remap the leader key
let mapleader = " "

" Remap leader s to set spelling
nnoremap <leader>sn :set spell spelllang=nb
nnoremap <leader>se :set spell spelllang=en_us

" Remap leader f to spellcheck fix to fist match
nnoremap <leader>f 1z=

" Turn off arrow keys!
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" NERDtree to leader o
map <leader>o :NERDTreeToggle<CR>

"-------------------------------------------------------------------------------
" Macros
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Plugin options
"-------------------------------------------------------------------------------

" Markdown tables
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'
