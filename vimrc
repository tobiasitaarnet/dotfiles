"=====[ Vundle setup ]==========================================================

set nocompatible                        " be improved, required for Vundle
filetype off                            " required, required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'            " let Vundle manage Vundle, required

"=====[ Plugins ]===============================================================

Plugin 'vim-airline/vim-airline.git'     " adds airline
Plugin 'dhruvasagar/vim-table-mode'      " adds table support
Plugin 'sheerun/vim-polyglot'            " adds syntax support for languages
Plugin 'dracula/vim'                     " color scheme
Plugin 'markonm/traces.vim'              " highlights patterns for RegEx

" R plugins
" Plugin 'jalvesaq/Nvim-R'
" Plugin 'ncm2/ncm2'
" Plugin 'gaalcaras/ncm-R'

" All of your Plugins must be added before the following line
call vundle#end()                        " required
filetype plugin indent on                " required

"=====[ Color scheme and fonts ]================================================

"set background=dark
colorscheme dracula
let g:airline_theme = "dracula"
set guifont=IBM_Plex_Mono:h14


"=====[ Display options ]=======================================================

set nu relativenumber                    " set numbering
syntax on                                " set syntax
set tabstop=2 shiftwidth=2 expandtab     " tabs to spaces
set linebreak                            " automatic line breaks
set tw=80                                " set text width to 79 chars
set encoding=utf-8                       " set default encoding to UTF-8
set clipboard=unnamed                    " set clipboard to system

"=====[ Remaps ]================================================================

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

" Turn off arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Toggle color column
nnoremap <F2> :call ToggleCC()<CR>

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
" (uBB is right double angle, uB7 is middle dot)
set lcs=tab:»·,trail:␣,nbsp:˷
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

"=====[ Plugin options ]========================================================

" Markdown tables
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'

"=====[ Convert to Unicode defaults ]===========================================

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *       set encoding=utf-8
autocmd BufNewFile,BufRead  *   endtry
