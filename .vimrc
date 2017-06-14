" VUNDLE CONFIG {{{
" =================
" REQUIREMENTS FOR VUNDLE CONFIG
" ==============================
set nocompatible
filetype off

" SET THE RUNTIME PATH TO INCLUDE VUNDLE AND INITIALIZE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" INIT PLUGINS
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'junegunn/vim-easy-align'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'zefei/vim-colortuner'
Plugin 'mhinz/vim-startify'
Plugin 'Shougo/neocomplete.vim'

call vundle#end()
filetype plugin indent on

" [SET] character encoding
set encoding=utf-8

" [SET] {NEOCOMPLETE} config
let g:acp_enableAtStartup = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" [SET] {AIRLINE} config
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='base16_ashes'
" }}}
