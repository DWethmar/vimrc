set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Just a shitload of color schemes.
" https://github.com/flazz/vim-colorschemes#current-colorschemes
Bundle 'flazz/vim-colorschemes'
" Proper JSON filetype detection, and support.
Bundle 'leshill/vim-json'
" vim already has syntax support for javascript, but the indent support is
" horrid. This fixes that.
Bundle 'pangloss/vim-javascript'
" vim indents HTML very poorly on it's own. This fixes a lot of that.
Bundle 'indenthtml.vim'

call vundle#end()            " required

set ruler
set number
set mouse=a

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

set background=dark
