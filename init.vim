set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
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

":set listchars=tab:\|\
":set list

call plug#begin('~/.vim/plugged')

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
"Plug 'morhetz/gruvbox'
"Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sainnhe/everforest'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'pseewald/vim-anyfold'
call plug#end()

if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1

colorscheme everforest
"let g:gruvbox_contrast_dark = "hard"

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }
let mapleader=" "
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'everforest',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTree<CR>
map <leader>r :NERDTreeFind<cr>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
