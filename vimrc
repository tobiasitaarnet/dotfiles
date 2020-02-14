"=====[ Pre-Vundle ]============================================================

" The mapleader has to be set before Vundle starts loading all the plugins
let mapleader = " "                    " Remap the leader key

"=====[ Vundle setup ]==========================================================

set nocompatible                        " be improved, required for Vundle
filetype off                            " required, required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'          " let Vundle manage Vundle, required

"=====[ Plugins ]===============================================================

Plugin 'vim-airline/vim-airline.git'   " adds airline
Plugin 'dhruvasagar/vim-table-mode'    " adds table support
Plugin 'sheerun/vim-polyglot'          " adds syntax support for languages
Plugin 'dracula/vim'                   " color scheme
Plugin 'markonm/traces.vim'            " highlights patterns for RegEx

" R plugins
" Plugin 'jalvesaq/Nvim-R'
" Plugin 'ncm2/ncm2'
" Plugin 'gaalcaras/ncm-R'

" All of your Plugins must be added before the following line
call vundle#end()                      " required
filetype plugin indent on              " required

"=====[ User interface ]========================================================

" Colors and fonts
colorscheme dracula                    " set colorscheme
let g:airline_theme = "dracula"        " set airline theme
set guifont=IBM_Plex_Mono:h12          " set font to IBM Plex

" Buffer display options
set nu relativenumber                  " set numbering
syntax on                              " set syntax
set tabstop=2 shiftwidth=2 expandtab   " tabs to spaces
set linebreak                          " automatic line breaks
set tw=80                              " set text width to 79 chars
set wildmenu                           " set wildmenu to on

"stuff to ignore when tab completing in wildmenu
set wildignore+=*vim/backups*
set wildignore+=*.png,*.jpg,*.gif

"=====[ General options ]=======================================================

set encoding=utf-8                     " set default encoding to UTF-8
set clipboard=unnamed                  " set clipboard to system
set magic                              " turn magic on for RegEx
set backspace=indent,eol,start         " allow backspace in insert mode
set autoread                           " reload files changed outside vim
set scrolloff=4                        " start scrolling 4 lines from margins
set nofoldenable                       " disable folding

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"=====[ Remaps ]================================================================

" Remap escape to jk
inoremap jk <ESC>

" Remap leader s to set spelling
nnoremap <leader>sn :set spell! spelllang=nb<CR>
nnoremap <leader>se :set spell! spelllang=en_us<CR>

" Quality of life open/close commands
map <leader>o :browse confirm e<CR>
map <leader>w :write<CR>

" Turn off arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Toggle colorcolumn at 80
nnoremap <F2> :call ToggleCC()<CR>

" Toggle color on active line
map <F3> :set cursorline!<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"=====[ Functions ]=============================================================

" Toggle color column
fun! ToggleCC()
  if &cc == ''
    set cc=81
  else
    set cc=
  endif
endfun

" Make naughty characters visible...
set lcs=tab:»·,trail:·,nbsp:·
highlight InvisibleSpaces ctermfg=Black ctermbg=Black
call matchadd('InvisibleSpaces', '\S\@<=\s\+\%#\ze\s*$')

augroup VisibleNaughtiness
    autocmd!
    autocmd BufEnter  *       set list
    autocmd BufEnter  *       set list
    autocmd BufEnter  *.txt   set nolist
    autocmd BufEnter  *.vp*   set nolist
    autocmd BufEnter  *       if !&modifiable
    autocmd BufEnter  *           set nolist
    autocmd BufEnter  *       endif
augroup END

" Delete trailing white space on save, useful for some filetypes
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.r,*.py,*.sh :call CleanExtraSpaces()
endif

"=====[ Plugin options ]========================================================

" Markdown tables
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'
