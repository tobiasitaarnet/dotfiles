"-------------------------------------------------------------------------------
" Vundle setup (MUST BE FIRST)
"-------------------------------------------------------------------------------

set nocompatible                        " be improved, required for Vundle
filetype off                            " required, required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'            " let Vundle manage Vundle, required

"-------------------------------------------------------------------------------
" Vundle plugins
"-------------------------------------------------------------------------------
Plugin 'vim-airline/vim-airline.git'     " adds airline
Plugin 'dhruvasagar/vim-table-mode'      " adds table support
Plugin 'sheerun/vim-polyglot'            " adds syntax support for languages
Plugin 'dracula/vim'                     " color scheme
Plugin 'markonm/traces.vim'              " highlights patterns for RegEx
Plugin 'tommcdo/vim-lion'                " aligning text by some characters
Plugin 'tpope/vim-surround'              " delete, change and add surroundings

" All of your Plugins must be added before the following line
call vundle#end()                        " required
filetype plugin indent on                " required

"-------------------------------------------------------------------------------
" Color scheme and fonts
"-------------------------------------------------------------------------------

"set background=dark
colorscheme dracula
let g:airline_theme = "dracula"
set guifont=IBM_Plex_Mono:h12

"-------------------------------------------------------------------------------
" Editor options
"-------------------------------------------------------------------------------

set nu relativenumber                " set numbering
syntax on                            " set syntax
set tabstop=2 shiftwidth=2 expandtab " tabs to spaces
set linebreak                        " automatic line breaks
set tw=79                            " set text width to 79 chars
set encoding=utf-8                   " set default encoding to UTF-8
set clipboard=unnamed                " set clipboard to system
set incsearch                        " start searching at first input
set autoindent                       " autoindents text

" Always encode UTF-8
if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

"-------------------------------------------------------------------------------
" Remaps
"-------------------------------------------------------------------------------

" Remap escape to jk
inoremap jk <ESC>

" Remap the leader key
let mapleader = " "

" Remap leader s to set spelling
nnoremap <leader>sn :set spell! spelllang=nb<CR>
nnoremap <leader>se :set spell! spelllang=en_us<CR>

" Remap leader f to spellcheck fix to fist match
nnoremap <leader>f 1z=

" Quality of life open/close commands
map <leader>o :browse confirm e<CR>
map <leader>w :write<CR>

" Turn off arrow keys and escape!!
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
imap <Esc> <nop>

" Strip trailing whitespace
nnoremap <leader>s :call StripTrailingWhitespace()<CR>

"-------------------------------------------------------------------------------
" Functions
"-------------------------------------------------------------------------------

function! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction

"-------------------------------------------------------------------------------
" Plugin options
"-------------------------------------------------------------------------------

" Markdown tables
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'
