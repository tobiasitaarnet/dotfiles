set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'vim-airline/vim-airline.git'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'sheerun/vim-polyglot'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'markonm/traces.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Display options
colorscheme iceberg
set guifont=IBM_Plex_Mono:h12

" Editor options
set nu relativenumber
syntax on
set tabstop=2 shiftwidth=2 expandtab
set linebreak
set tw=79

" Set default encoding to UTF-8
set encoding=utf-8

" Set clipboard to same as system
set clipboard=unnamed

" Markdown tables
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'

" Set search highlighting
set incsearch

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
