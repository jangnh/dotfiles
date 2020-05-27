set encoding=utf-8
set background=dark

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
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'mileszs/ack.vim'
"Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

autocmd vimenter * colorscheme gruvbox

"NERDTree Toogle
map <C-n> :NERDTreeToggle<CR>

"Automatic open NERDTree when wim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"Ctags toggle
set tags=tags

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"Ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"vim-fugitive
set tags^=.git/tags

filetype plugin indent on
