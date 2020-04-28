" ===========================
" Let's start with the basics
" ===========================

set nocompatible

filetype plugin indent on
syntax on

" === Change leader to something better
let mapleader=";"

" === Useless left pad for aesthetic
set foldcolumn=2
" highlight FoldColumn ctermbg=0

" === Show mode & match ===
set showmode
set showmatch

" === Hide line numbers and use ruler ===
set ruler

" === Wildmenu ===
set wildmenu
set wildmode=longest:full,full

" === Sensible splitting
set splitbelow
set splitright

" === Indentation ===
set autoindent

" === Search behavior
set incsearch
set hlsearch
set ignorecase
set smartcase

" === Hide buffers ===
set hidden

" === Show incomplete commands ===
set showcmd

" === Gotta go fast 
set ttyfast

" === Tab settings ===
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set shiftround

" === Backspace behavior ===
set backspace=indent,eol,start

" === Completion ===
set complete-=i
set omnifunc=syntaxcomplete#Complete

" ====================
" File explorer things
" ====================

" === Aesthetics ===
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_browse_split=4

" === Delete dirs too ===
let g:netrw_localrmdir='rm -rf'

" === Bind file exlporer to <Leader>n
nnoremap <leader>n :Lexplore<CR>

" ====================
"       Plugins
" ====================

" === Dir for plugins ===
call plug#begin('~/.config/nvim/plugged')
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'w0rp/ale'
Plug 'jhawthorn/fzy'
Plug 'cloudhead/neovim-fuzzy'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

set t_Co=256
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" Fuzzy
nnoremap <C-p> :FuzzyOpen<CR>
