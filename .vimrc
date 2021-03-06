set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set guioptions+=a
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set noshowmode
set cursorline
set cursorcolumn

set tabstop=4
set colorcolumn=79
"set expandtab
set number relativenumber
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
"set backspace=2 " make backspace work like most other programs
""set backspace=indent,eol,start
"set foldmethod=indent
":set listchars=tab:\|\
":set list

call plug#begin('~/.vim/plugged')

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'pseewald/vim-anyfold'
Plug 'nvie/vim-flake8'
"Plug 'vim-syntastic/syntastic'

call plug#end()

if has('termguicolors')
  set termguicolors
endif

" Configure theme
syntax on
let g:airline_theme='onedark'
colorscheme OceanicNext "onedark

"execute pathogen#infect()
"let g:syntastic_python_checkers=['flake8']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0

let g:closetag_filenames='*.html,*.js,*.jsx,*.ts,*.tsx'
au VimEnter *  NERDTree

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTree<CR>
map <leader>r :NERDTreeFind<cr>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
