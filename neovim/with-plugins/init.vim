" ===========================
" Let's start with the basics
" ===========================

set nocompatible

filetype plugin indent on
syntax on

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
Plug 'joshdick/onedark.vim'
Plug 'tmsvg/pear-tree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
call plug#end()

" === Change leader to something better
let mapleader=";"

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
let g:netrw_winsize=20
let g:netrw_browse_split=4

" === Delete dirs too ===
let g:netrw_localrmdir='rm -rf'

" === Bind file exlporer to <Leader>n
nnoremap <leader>n :Lexplore<CR>

colorscheme onedark
let g:onedark_termcolors=256
set syntax 
set background=dark

" lightline
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" Fuzzy
nnoremap <C-p> :FuzzyOpen<CR>

" ====================
"     Pear Tree 
" ====================

let g:pear_tree_smart_openers = 0
let g:pear_tree_smart_closers = 0
let g:pear_tree_smart_backspace = 0

" ====================
"     Coc.nvim  
" ====================

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=0

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
