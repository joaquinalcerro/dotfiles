set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ---------------------------------------
" Installed Plugins
" --------------------------------------

Plugin 'jiangmiao/auto-pairs'
Plugin 'myusuf3/numbers.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'elixir-lang/vim-elixir'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'


" ---------------------------------------
"  UltiSnips and YouCompleteMe
" ---------------------------------------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" ---------------------------------------
"  Nerdtree configuration
" ---------------------------------------
"  Start Nerdtree automatically when no file is supplied when calling vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Change arrow types
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Open vim with ctl+n map key
map <C-n> :NERDTreeToggle<CR>

" ---------------------------------------
" Basic Configuration
" ---------------------------------------
set tabstop=2
set shiftwidth=2
" set ruler
set encoding=utf-8
set laststatus=2
set term=screen-256color
colors molokai "desert
set cursorline
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" Set leader key
let mapleader=","

" Set vim airline theme
let g:netrw_liststyle=3
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1

" Configuration for netrw file explorer
let g:netrw_banner=0 

" Split window
nmap <leader>swh :topleft  vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>swl :botright vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>swk :topleft  new<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>swj :botright new<C-R>=expand("%:p:h") . '/'<CR>

" Split Buffer
nmap <leader>sh :leftabove  vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>sl :rightbelow vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>sk :leftabove  new<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>sj :rightbelow new<C-R>=expand("%:p:h") . '/'<CR>

"Search down into subfolders
"Provides tab-completionfo all file-related tasks
set path+=**

"Display matching
set wildmenu wildmode=longest:full,full 
" set wildmenu

call vundle#end()            " required

"Enable syntax and plugins (for netrw)
syntax enable
filetype on
filetype plugin on
filetype indent on
