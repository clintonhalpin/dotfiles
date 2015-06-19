execute pathogen#infect()
syntax on
filetype plugin indent on

set cursorline
set expandtab
set modelines=0
set shiftwidth=4
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=4
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set paste
set autoindent
set smartindent

colors hybrid 

"Tab between buffers
noremap <tab> <c-w><c-w>

" Prefer set paste
nmap <leader>p :setlocal paste! paste?<cr>

function! NumberToggle()
  if(&relativenumber == 1)
  set number
  else
  set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

au FocusLost * :set number
au FocusGained * :set relativenumber

set relativenumber
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*
set paste