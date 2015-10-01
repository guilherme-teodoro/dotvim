set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'isRuslan/vim-es6'
Plugin 'rosenfeld/conque-term'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/npm.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'

call vundle#end() 
filetype plugin indent on 
syntax on 

let mapleader = ","

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile
set autoread

set number
set guifont=Monaco:h12
set linespace=3
set laststatus=2
set background=dark
set guioptions-=r 
colorscheme material-theme

let g:airline_powerline_fonts = 0

let g:syntastic_javascript_checkers = ['eslint']
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


map <silent> <C-n> :NERDTreeFocus<CR>
nmap <leader>t :CtrlP<cr>

let NERDTreeShowHidden=1

" Disabled arrow keys 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
