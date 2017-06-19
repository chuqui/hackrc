" vundle vimrc config for javascript, python and C/C++ development
" Requires vundle installed.
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Editor functions
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'honza/vim-snippets'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'

" Web related support
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'

" Python support
Plugin 'davidhalter/jedi-vim'

" C/C++ support
Plugin 'c.vim'

" Theme plugin
Plugin 'tomasr/molokai'

call vundle#end()

" Syntax enable
syntax enable

" CtrlP Plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map1 = '<c-P>'
let g:ctrlp_cmd1 = 'CtrlPMRU'
let g:ctrlp_working_path_mode = 'w'
"ctrl+p ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Theme setup
let g:molokai_original = 1
colorscheme molokai

" NERDTree setup
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" C/C++ setup
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" tab preferences setup
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on
set relativenumber
set cursorline
