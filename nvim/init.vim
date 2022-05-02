" allow os clipboard
set clipboard=unnamedplus,unnamed

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

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
