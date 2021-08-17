set number
set autoindent
syntax on
" 高亮搜索
set hlsearch
" 增量搜索
set incsearch

let mapleader=','
inoremap <leader>w <Esc>:w<cr>
inoremap <leader>wq <Esc>:wq<cr>
inoremap <leader>q <Esc>:q!<cr>
noremap <leader>q <Esc>:q!<cr>
inoremap jj <Esc>
map <space> viw

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" set title for python file

"func SetTitle()
  "if &filetype == 'python'
    "call setline(1, "\#!/usr/bin/env python")
    "call setline(2, "\# -*- coding: utf-8 -*-")
    "normal G
    "normal o
    "normal o
    "call setline(5, "if __name__ == '__main__':")
    "call setline(6, "pass")
  "endif
"endfunc



" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'anyakichi/vim-surround'
Plug 'brooth/far.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'lfv89/vim-interestingwords'

Plug 'tpope/vim-commentary'
call plug#end()

" nerdtree settings
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>t :NERDTreeToggle<cr>

" ctrlp settings
let g:ctrlp_map = '<c-p>'

" easymotion setting
nmap ss <Plug>(easymotion-s2)
