set nocompatible " Disable vi compatability to avoid possible issues
set history=1000

" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'

call plug#end()
" }}}

" Color scheme {{{
colorscheme onedark
highlight Normal ctermbg=NONE guibg=#282C34
syntax on
set termguicolors
set number

" Enable filetypes support
filetype on
filetype plugin on
filetype indent on

" Cursor highlighting
set cursorline
set cursorcolumn

set showcmd " Always show current command in footer
set showmode
" }}}

" Indentation settings {{{
set autoindent
set smartindent   " Enable smart indentation for code
set tabstop=4     " Number of spaces that a <Tab> represents
set shiftwidth=4  " Number of spaces to use for autoindent
set expandtab     " Use spaces instead of tabs
" }}}

" Search {{{
set ignorecase
set smartcase
set hlsearch
" }}}

" VIMSCRIPT {{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" Mapping {{{
" Type jj to exit insert mode quickly.
inoremap jj <Esc>
" }}}
