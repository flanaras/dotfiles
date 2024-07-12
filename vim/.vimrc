call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }

" status bar
Plug 'itchyny/lightline.vim'

Plug 'mhinz/vim-signify' " For diff
Plug 'tpope/vim-surround' " surround.vim: quoting/parenthesizing made simple
Plug 'preservim/nerdtree' " the NERDTree is a file system explorer for the Vim editor.
map <C-_> <plug>NERDCommenterToggle
Plug 'preservim/nerdcommenter' " Comment functions so powerful—no comment necessary.
filetype plugin on
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " It's called vim-visual-multi in analogy with visual-block, but the plugin works mostly from normal mode.
Plug 'elzr/vim-json'
Plug 'rhysd/vim-grammarous'

call plug#end()

"https://thoughtbot.com/blog/5-useful-tips-for-a-better-commit-message
autocmd Filetype gitcommit setlocal spell textwidth=72

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

" set confluencewiki filetype to .cw extensions
" source https://stackoverflow.com/a/11666247/3232786
augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.cw   set syntax=confluencewiki
augroup END

set runtimepath^=~/.vim/bundle/ctrlp.vim
