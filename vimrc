set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'

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

"let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow
call gitgutter#highlight#define_highlights()

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

map <silent> <C-n> :NERDTreeFocus<CR>
nmap <leader>t :CtrlP<cr>

