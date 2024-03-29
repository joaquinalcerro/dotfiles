" set leader key
let g:mapleader = ","

filetype plugin indent on 
set noswapfile                          " Sets vim for no swipfiles
set foldmethod=indent                   " Sets folding method for vim
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set softtabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set nonumber norelativenumber           " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " option: light; tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory
set termguicolors
set title                               " Let iTerm display file name
set wildmenu wildmode=longest:full,full " Configure wildmenu for matching elements
set splitbelow                          " Position the split below current window
set splitright                          " Position the split to the right of current window

" ---------------------------------------
" Search options
" ---------------------------------------
set hlsearch                            " Highlight search
set incsearch
set ignorecase
set smartcase
" set path+=.,**
set path+=$PWD/**
set wildignore+=**/node_modules/**
set wildignore+=**/_build/**
set wildignore+=**/deps/**

" CtrlP Configuration
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/_build/*,*/deps/*

" ---------------------------------------
" Set vim airline theme
" ---------------------------------------
let g:airline#extensions#coc#enabled = 0
let g:airline_statusline_ontop=1
let g:netrw_liststyle=3
let g:airline_powerline_fonts = 1
" let g:airline_theme='codedark'
let g:airline_theme='gruvbox'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline_section_c = '%t'

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'unique_tail'

" remove sections
let g:airline_section_error=''
let g:airline_section_warning=''
let g:airline_section_y=''
" remove separators for empty sections
let g:airline_skip_empty_sections = 1

" Changes the color of docs in Elixir Files based on Color Scheme
let g:elixir_use_markdown_for_docs = 1

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" ---------------------------------------------
"  Python configuration
"  --------------------------------------------
" let g:loaded_python_provider = 0
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Avoids collision with <TAB> key for autocomplete
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" -------------------------
"  Mix format configuration
"  ------------------------
" let g:mix_format_on_save = 1

" Start nvim without indent lines
" Use indentline toggle
let g:indentLine_enabled = 0

let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" -------------------------
"  Commands
"  ------------------------

"" Disable terminal line numbers
augroup TerminalStuff
   au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

autocmd InsertEnter,InsertLeave * set cul! " Change cursor when insert mode

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Set auto warp when editing notes
au! BufRead,BufNewFile *.md setlocal textwidth=80
au! BufRead,BufNewFile *.note setlocal textwidth=80
