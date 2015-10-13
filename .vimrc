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
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Chiel92/vim-autoformat' " Handige autoformater, binden we zo later mooi aan F3

call vundle#end()            " required

set ruler
set number
set mouse=a

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1 " Start with bookmarks open

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Ctr - S Mapping
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>
inoremap <c-s> <c-o>:Update<CR>

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon
"
" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

" TABS
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

noremap <F3> :Autoformat<CR>

set background=dark
colorscheme gruvbox
