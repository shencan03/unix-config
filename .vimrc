set nocompatible
set nowrap
set autoread
set termguicolors

filetype plugin indent on
syntax on

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

set backspace=indent,eol,start
set hidden
set laststatus=2
set display=lastline

set showmode
set showcmd

set incsearch

set ttyfast
set lazyredraw

set splitbelow
set splitright

set wrapscan
set report=0
set synmaxcol=3000
set history=1000

set undofile
set undodir=$HOME/.vim/undo
set background=dark

set clipboard=unnamed
set dir=$HOME/.vim/swap

" Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'ayu-theme/ayu-vim'

call plug#end()

" Keybinds for coc.nvim
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd FileType html,css,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Leader
let mapleader = " "

" Switch to next split
nnoremap <leader>w <C-w>w

" Open a file in a vertical split
nnoremap <leader>fv :vert split<Space>

" Move between splits
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" New tab
nnoremap <leader>ft :tabnew<Space>

" Half-page jump and recenter
nnoremap <leader>jj <C-d>zz
nnoremap <leader>kk <C-u>zz

" Netrw side panel toggle
let g:netrw_winsize = 25
nnoremap <leader>e :Lexplore<CR>

" Comment out selection in visual mode
nmap <leader>/ gcc
vmap <leader>/ gc

" Ayu
let ayucolor="dark"
colorscheme ayu
