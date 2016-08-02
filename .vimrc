" =============== Basic Configuration ===============

" -->
" General

" Shortcut
let mapleader="\<Space>"                " change mapleader
map <Leader>y "+y
map <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>W :w<CR>
nmap ]b :bnext<CR>
nmap [b :bprevious<CR>
nmap ]t :tnext<CR>
nmap [t :tprevious<CR>

" Editor
set nocompatible                        " set incompatible with vi
set hidden                              " a buffer becomes hidden when it is abandoned
set wildmenu                            " show the tab-completion menu on the command line
set spell                               " enable spell checking
set history=500                         " set the number of history to remember
set backspace=indent,eol,start          " more powerful backspace
set mouse=a                             " enable mouse

" Filetype
filetype on                             " enable filetype detection
filetype plugin on                      " load corresponding plugin according to the filetype
filetype indent on                      " smart indent according to the language

" Syntax
syntax enable                           " enable syntax highlight
syntax on                               " enable replace default syntax scheme with specialise syntax scheme

" Indent
set cindent                             " cindent
set autoindent                          " autoindent
set cino=:0g0t0(sus                     " C/C++ style indent
set expandtab                           " use spaces instead of tabs
set tabstop=4                           " tab width
set shiftwidth=4                        " shift width
set softtabstop=4                       " backspace width

" Search
set incsearch                           " show the search result in real time
set ignorecase                          " ignore case when searching
set smartcase                           " don't ignore case when there is capital letter
set hlsearch                            " highlight the search results

" Fold
set foldmethod=syntax                   " fold code based on the syntax
set nofoldenable                        " don't fold code on start

" Display
set nowrap                              " disable wrap lines
set title                               " show the file name in the title
set number                              " show the line number
set showcmd                             " show typed command in status bar
set laststatus=2                        " use two lines to show the status bar
set ruler                               " show the position of cursor
set cursorline                          " highlight cursor line
set cursorcolumn                        " highlight cursor column

" Matching
set showmatch                           " show the matching bracket
set matchtime=2                         " set the matching time
set matchpairs+=<:>                     " add matching pairs

" Timeout
set timeout                             " time out on mappings
set ttimeout                            " time out on key codes
set timeoutlen=1000                     " mapping delay
set ttimeoutlen=100                     " key code delay

" Error
set noerrorbells                        " disable error bells
set novisualbell                        " disable visual bells
set t_vb=                               " disable flash

" <--



" =============== Plugin Configuration ===============

" -->
" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" <--

" -->
" Solarized

set background=dark
colorscheme solarized

" <--
