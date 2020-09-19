set runtimepath^=~/.vim/bundle/ctrlp.vim
set fileformat=unix
set spell spelllang=en_gb
set incsearch
set hlsearch
set nu
set t_Co=256
set ignorecase
set smartcase
set nocompatible
set showcmd " show keys pressed
set cul " highlight current line
hi CursorLine term=none cterm=none ctermbg=15 " style for line selected
set mouse=a " do not select the numbers while selected text
set tabstop=4
set shiftwidth=4
set expandtab
vnoremap <C-c> "+y
inoremap <C-v> <ESC>"+pa
set cindent
