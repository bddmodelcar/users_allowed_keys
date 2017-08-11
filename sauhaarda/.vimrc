colorscheme monokai
syntax enable

set t_Co=256
set colorcolumn=80
set swapfile
set noshowmatch
set dir=~/tmp
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set nobackup
set tags=tags;
set clipboard=unnamed

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
vnoremap <space> zf

set splitright
set splitbelow

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on


autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
vnoremap > >gv
vnoremap < <gv

set mouse=a
