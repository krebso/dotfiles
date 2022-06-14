syntax enable
set nocompatible
call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'windwp/nvim-autopairs'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'lifepillar/vim-wwdc16-theme'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set mouse=a
set guicursor=
set nohlsearch
set noswapfile
set nobackup
set undodir=~/.config/nvim/undo
set undofile
set number
set ttyfast
set showmode
set showcmd
set title
set hidden
set ruler
set ai
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set inccommand=split
set noerrorbells
set novisualbell
set termguicolors
set signcolumn=number
set lazyredraw
set scrolloff=5
set relativenumber
set encoding=utf-8
setglobal fileencoding=utf-8
set laststatus=3

set wildmenu
set wildmode

" Visuals
syntax on
colorscheme wwdc16
highlight ColorColumn ctermbg=0 guibg=grey
highlight SignColumn guibg=none
highlight clear LineNr
highlight CursorLineNR guibg=None
highlight Normal guibg=none
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f

set cursorline
highlight clear CursorLine
highlight CursorLine gui=underline cterm=underline

let loaded_matchparen = 1
let mapleader = " "

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>d "_d
vnoremap <leader>d "_d

inoremap <C-c> <esc>

let g:rainbow_active = 1

nnoremap <leader>d :bd<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>b :ls<cr>
nnoremap <Leader>o o<Esc>

lua require('nvim-autopairs').setup{}
let g:rainbow_active = 1
