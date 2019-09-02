set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'vim-airline/vim-airline.git'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'sheerun/vim-polyglot'
Plugin 'cocopon/iceberg.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'

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

set nu
set relativenumber
map <C-o> :NERDTreeToggle<CR>

syntax on
colo iceberg
set guifont=IBM\ Plex\ Mono\ weight=453\ 10
set tabstop=2 shiftwidth=2 expandtab
set wrap
set linebreak
set tw=79

" Markdown tables
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'

" Map Nerdtree
map <C-o> :NERDTreeToggle<CR>
