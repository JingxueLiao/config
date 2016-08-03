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
nmap ]t :tnext<CR>
nmap [t :tprevious<CR>
nmap ]b :bnext<CR>
nmap [b :bprevious<CR>

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
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'Lokaltog/vim-powerline'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'derekwyatt/vim-protodef'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" <--

" -->
" Solarized

set background=dark
colorscheme solarized

" <--

" -->
" NERD Tree

nmap <Leader>lf :NERDTreeToggle<CR>

" <--

" -->
" Tagbar

nmap <Leader>li :TagbarToggle<CR>

let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:1', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" <--

" -->
" Indexer

let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" <--

" -->
" Powerline

let g:Powerline_colorscheme='solarized256'

" <--

" -->
" MiniBufExpl

nmap <Leader>lb :MBEToggle<CR>

" <--

" -->
" Indent Guides

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" <--

" -->
" NERD Commenter

let g:NERDSpaceDelims=1

" <--

" -->
" FSwitch

nmap <silent> <Leader>sw :FSHere<CR>

" <--

" -->
" Protodef 

let g:disable_protodef_sorting=1

" <--
