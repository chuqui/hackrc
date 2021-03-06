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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rhubarb'

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
Plugin 'w0ng/vim-hybrid'

call vundle#end()

" Syntax enable
syntax enable

" CtrlP Plugin
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'w'
"ctrl+p ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Theme setup
set background=dark
colorscheme hybrid

" Clipboard
set clipboard=unnamed

" Lightline config
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'gitbranch', 'fileformat', 'fileencoding', 'filetype'] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }
set laststatus=2

" NERDTree setup
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" vim multiple cursors
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_start_key = '<Leader>n'
" let g:multi_cursor_start_word_key = 'g<Leader>n'
" let g:multi_cursor_next_key = '<Leader>n'
" let g:multi_cursor_prev_key = '<Leader>b'
" let g:multi_cursor_skip_key = '<Leader>s'
" let g:multi_cursor_quit_key = '<Esc>'

" C/C++ setup
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" Snipets config
let g:UltiSnipsExpandTrigger="<tab>"

" Better whitespace config.
let g:better_whitespace_verbosity=1
let g:strip_whitespace_on_save=1

" Tab preferences setup
set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on
set relativenumber
set number
set cursorline
set cursorcolumn

" No bad habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
