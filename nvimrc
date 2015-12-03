" Vundle setup
filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-rails'
Plugin 'itchyny/lightline.vim'
Plugin 'wting/rust.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-scripts/nginx.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'plasticboy/vim-markdown'

" Themes
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/xoria256.vim'

call vundle#end()

"The comma leader
let mapleader=","

filetype plugin indent on
syntax on
colorscheme xoria256
" Better whitespace color highlight. Less annoying
highlight ExtraWhitespace ctermbg=lightgreen

set hlsearch
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set showcmd
set number
set backspace=2

" Flymode
let g:AutoPairsFlyMode = 1

" Undo
set undodir=~/.nvim/undodir
set undofile
set undolevels=1000
set undoreload=10000

" Better escape key
inoremap jk <ESC>

" Buffergator
let g:buffergator_viewport_split_policy="T"

" Some mouse settings
set ttymouse=sgr
set ttyfast
set mouse=a
