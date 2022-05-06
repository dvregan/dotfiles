" allow os clipboard
set clipboard=unnamedplus,unnamed

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" bindings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <A-1> :NERDTreeToggle<CR>

" no swap file
set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000

" enable line numbers
set number

" configure indents
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" search and replace
set ignorecase
set smartcase
set gdefault
