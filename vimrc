set encoding=utf-8

" Leader
let mapleader = " "

set backspace=2
set nobackup
set nowritebackup
set noswapfile    
set history=50
set ruler         
set showcmd       
set incsearch     
set laststatus=2  
set autowrite     
set modelines=0   
set nomodeline

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set termguicolors

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set list listchars=tab:»·,trail:·,nbsp:·

set nojoinspaces

set textwidth=80
set colorcolumn=+1

set number
set numberwidth=5

set splitbelow
set splitright

set diffopt+=vertical

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'

call plug#end()

filetype plugin indent on
