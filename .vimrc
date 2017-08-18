set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-fugitive.git'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" ---------------------------------------- " 
" Configure YouCompleteMe
" ---------------------------------------- " 

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Source .vimrc after saving
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Custom .vimrc mappings
let mapleader = ","
" Open .vimrc file for editting
nmap <leader>v :split $MYVIMRC<CR>
" Run current python file
nnoremap <silent> <leader>m :!clear;python %<CR>
