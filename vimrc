" ---------------------------------------------
"  Dein Plugin Installer Configuration
"  --------------------------------------------
if &compatible
  set nocompatible
endif
set runtimepath+=/home/jalcerro/.config/nvim/repos/github.com/Shougo/dein.vim/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/jalcerro/.config/nvim')
  call dein#begin('/home/jalcerro/.config/nvim')

  call dein#add('Shougo/neocomplete.vim')
	call dein#add('Shougo/deoplete.nvim')

  call dein#end()
  call dein#save_state()
endif

" ---------------------------------------------
"  Bundle Plugin Installer Configuration
"  --------------------------------------------

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


" ---------------------------------------------
"  Python configuration
"  --------------------------------------------
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3'

" ---------------------------------------
" Bundle Installed Plugins
" --------------------------------------

Plugin 'jiangmiao/auto-pairs'
Plugin 'myusuf3/numbers.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'marcweber/vim-addon-mw-utils'
" Plugin 'elixir-lang/vim-elixir'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'elmcast/elm-vim'
Plugin 'sheerun/vim-polyglot'
" Plugin 'lambdatoast/elm.vim'
Plugin 'tomasr/molokai'
Plugin 'c-brenn/phoenix.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'dracula/vim'
Plugin 'mileszs/ack.vim'
Plugin 'ryanoasis/vim-devicons'


call vundle#end()            " required
" ---------------------------------------
"  Deoplete Plugin
"  --------------------------------------
let g:deoplete#enable_at_startup = 1

" ---------------------------------------
"  UltiSnips and YouCompleteMe
" ---------------------------------------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.

let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:ycm_server_python_interpreter = '/usr/local/bin/python'
"
" ---------------------------------------
"  Nerdtree configuration
" ---------------------------------------
"  Start Nerdtree automatically when no file is supplied when calling vim
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Change arrow types
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Open vim with ctl+n map key
" map <C-n> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>

" ---------------------------------------
" Tagbar configuration
" ---------------------------------------
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
		\ }

" ---------------------------------------
" Tabs configuration
" ---------------------------------------
nmap <F3> :tabnew<CR>
nmap <F7> :tabprevious<CR>
nmap <F9> :tabnext<CR>

" ---------------------------------------
" Basic Configuration
" ---------------------------------------

set background=dark
colors dracula "molokai elflord
" let g:molokai_original = 1
" let g:rehash256 = 1
"
" Set leader key
let mapleader=","

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set encoding=utf-8
set guifont=DroidSansMono\ Nerd\ Font\ Mono\ Book\ 14
" set guifont=Fira\ Code\ Regular\ 13
set laststatus=2
" set cursorline
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set modifiable
" set foldmethod=indent

"Enable syntax and plugins (for netrw)
syntax enable
filetype plugin indent on
" ---------------------------------------
" Search options
" ---------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
map <CR> :nohl<cr>

" Let iTerm display file name
set title

" Set vim airline theme
let g:netrw_liststyle=3
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#tabline#enabled = 1

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


" Buffer handeling
nmap <leader>bh :bnext<CR>
nmap <leader>bl :bp<CR>

" Find files
nmap <leader>f :find <C-R>
nmap <leader>s :Ack! <C-R>


"Search down into subfolders
"Provides tab-completionfo all file-related tasks
set path+=**

"Display matching
set wildmenu wildmode=longest:full,full 
" set wildmenu

" ----------------
" Workspace Setup
" ----------------
function! DefaultWorkspace()
    " Rough num columns to decide between laptop and big monitor screens
    let numcol = 2
    if winwidth(0) >= 220
        let numcol = 3
    endif

    if numcol == 3
        e term://zsh
        file Shell\ Two
        vnew
    endif

    " sp term://zsh
    " file Shell\ One
    " wincmd k
    " resize 35
    " wincmd h

    tabnew term://zsh
		tabp 

endfunction
command! -register DefaultWorkspace call DefaultWorkspace()

" Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>

" Window navigation in VIM function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
    func! s:maybeInsertMode(direction)
        stopinsert
        execute "wincmd" a:direction

        if &buftype == 'terminal'
            startinsert!
        endif
    endfunc

    execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
                \ "<C-\\><C-n>"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
    execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
endfunc
for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor

" -------------------------
"  Commands
"  ------------------------

autocmd FileType eelixir inoremap ee <%%><Esc>F%i
