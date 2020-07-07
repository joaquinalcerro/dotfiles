" -------------------------
"  Source Files
"  ------------------------
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/colors.vim

" -------------------------
"  CoC Configuration
"  ------------------------
source ~/.config/nvim/plugin-config/coc.vim
source ~/.config/nvim/plugin-config/coc-snippets.vim
source ~/.config/nvim/plugin-config/coc-explorer.vim





" ---------------------------------------
" Modify ColorScheme with my preferences
" ---------------------------------------
" augroup MyColors
"     autocmd!
"     autocmd ColorScheme * highlight Define cterm=italic ctermfg=176 gui=italic guifg=#C586C0
"                       " \ | highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
"                       " \ | highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
" augroup END

" ---------------------------------------
" Basic Configuration
" ---------------------------------------

" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" set termguicolors
"
" let mapleader="," " Set leader key

" set expandtab
" set shiftwidth=2
" set softtabstop=2
" set tabstop=2
" set encoding=utf8
" set laststatus=2
" set cursorline
" set modifiable
" set guifont=Fira\ Code:h11
" set background=dark

" Change cursor when insert mode
" autocmd InsertEnter,InsertLeave * set cul!

" Moves any copy/yank to the system clipboard
" For FreeBsd
" Copy to system clipboard is executed thru plugin yank.vim
" ----- this is a alternative -----
" set clipboard=unnamedplus
"
" For Suse Tumbleweed
" set clipboard+=unnamedplus

"" Disable terminal line numbers
" augroup TerminalStuff
"    au!
"   autocmd TermOpen * setlocal nonumber norelativenumber
" augroup END

" syntax enable "Enable syntax and plugins (for netrw)
" filetype plugin indent on
" set nocompatible " be iMproved, required
" filetype on      " required

" Changes the color of docs in Elixir Files based on Color Scheme
" let g:elixir_use_markdown_for_docs = 1

" Use specific nodejs version
" let g:node_host_prog = '/usr/home/jalcerro/.config/nvm/versions/node/v12.6.0/bin/neovim-node-host'

" ---------------------------------------------
"  Numbers and relative number configuration
" --------------------------------------------
" set nonumber norelativenumber
" nmap <F12> :set number! relativenumber!<CR>

" ---------------------------------------------
"  Personal mappings
" --------------------------------------------

" Return to previous buffer
" nnoremap tb :b#<CR>

" Remap * to add count in the search
" nnoremap * *<C-O>:%s///gn<CR>

" Edit/Source my VIMRC
" nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" nnoremap <leader>sv :source $MYVIMRC<cr>

" Easy exit from insert mode
" inoremap jj <ESC>
" inoremap <esc> <nop>

" Save files
" nnoremap <leader>ss :wa<CR>
"
"" ---------------------------------------------
"  Load plugins with minpack
" --------------------------------------------
" packadd minpac
" call minpac#init()

" if has('nvim')
"   call minpac#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
" elseif
"   call minpac#add('Shougo/deoplete.nvim')
"   call minpac#add('roxma/nvim-yarp')
"   call minpac#add('roxma/vim-hug-neovim-rpc')
" endif

" call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
" call minpac#add('k-takata/minpac', {'type': 'opt'})
" call minpac#add('ervandew/supertab')
" call minpac#add('SirVer/ultisnips')
" call minpac#add('honza/vim-snippets')
" call minpac#add('jiangmiao/auto-pairs')
" call minpac#add('vim-airline/vim-airline')
" call minpac#add('vim-airline/vim-airline-themes')
" call minpac#add('tomtom/tcomment_vim')
" call minpac#add('tomtom/tlib_vim')
" call minpac#add('tpope/vim-fugitive')
" call minpac#add('tpope/vim-surround')
" call minpac#add('elixir-editors/vim-elixir')
" call minpac#add('slashmili/alchemist.vim')
" call minpac#add('scrooloose/nerdtree')
" call minpac#add('jlanzarotta/bufexplorer')
" call minpac#add('dracula/vim', {'name': 'dracula'})
" call minpac#add('tomasiser/vim-code-dark')
" call minpac#add('mileszs/ack.vim')
" call minpac#add('Xuyuanp/nerdtree-git-plugin')
" call minpac#add('airblade/vim-gitgutter')
" call minpac#add('christoomey/vim-tmux-navigator')
" call minpac#add('w0rp/ale')
" call minpac#add('mattn/emmet-vim')
" call minpac#add('ctrlpvim/ctrlp.vim')
" call minpac#add('ryanoasis/vim-devicons')
" call minpac#add('dracula/zsh')
" call minpac#add('elixir-lsp/elixir-ls')

" ---------------------------------------------
"  Alchemist Configuration
"  --------------------------------------------

" let g:alchemist_iex_term_size = 15
" let g:alchemist_iex_term_split = 'split'
" let g:alchemist_tag_map = '<C-]>'
" let g:alchemist_tag_stack_map = '<C-T>'


" CtrlP Configuration
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/_build/*,*/deps/*


"---------------------------------------------
"  Color Scheme
"  --------------------------------------------
" packadd! dracula
" let g:dracula_colorterm = 0
" colorscheme molokai
" colorscheme dracula
" colorscheme gruvbox
" colorscheme codedark

" ---------------------------------------------
"  Python configuration
"  --------------------------------------------
" let g:python_host_prog = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python3'

" ---------------------------------------
"  ALE Linters
"  --------------------------------------
" let g:ale_elixir_elixir_ls_release = '/home/jalcerro/.config/nvim/pack/minpac/start/elixir-ls/release'
" ---------
" let g:ale_linters = {
" \   'elixir': ['credo', 'elixir-ls'],
" \} 
" let g:ale_linters_explicit = 1
" ---------

" ---------------------------------------
"  Vim Git integration mappings
" ---------------------------------------
" nmap <leader>dif :Gvdiffsplit<CR>


" ---------------------------------------
"  Vim Git Gutter Plugin Configuration
" ---------------------------------------
" nmap <leader>j <Plug>(GitGutterNextHunk)
" nmap <leader>k <Plug>(GitGutterPrevHunk)

" ---------------------------------------
"  Neosnippets
" ---------------------------------------
" let g:deoplete#enable_at_startup = 1


" ---------------------------------------
"  SuperTab Configuration
" ---------------------------------------
" let g:SuperTabDefaultCompletionType = "<c-n>"


" ---------------------------------------
"  Nerdtree configuration
" ---------------------------------------
"  Start Nerdtree automatically when no file is supplied when calling vim
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Nerdtree explorer width
" :let g:NERDTreeWinSize=40

" Change arrow types
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

" Open vim with ctl+n map key
" map <C-n> :NERDTreeToggle<CR>
" map <F2> :NERDTreeToggle<CR>
" nnoremap ff :NERDTreeToggle<CR>

" Git flags for NerdTree
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }

" ---------------------------------------
" Tabs configuration
" ---------------------------------------
" nmap <F5> :tabnew<CR>
" nmap <F7> :tabprevious<CR>
" nmap <F9> :tabnext<CR>

" ---------------------------------------
" Search options
" ---------------------------------------
" set hlsearch
" set incsearch
" set ignorecase
" set smartcase
" map <CR> :nohl<cr>

"Search down into subfolders
"Provides tab-completionfo all file-related tasks
" set path+=.,**
" set wildignore+=**/node_modules/**
" set wildignore+=**/_build/**


" Let iTerm display file name
" set title

" Set vim airline theme
" let g:netrw_liststyle=3
" let g:airline_powerline_fonts = 1
" let g:airline_theme='codedark'
" let g:airline_theme='dark'
" let g:airline#extensions#branch#enabled=1
" let g:airline#extensions#hunks#enabled=1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'unique_tail'

" Configuration for netrw file explorer
" let g:netrw_banner=0 

" Split window
" nmap <leader>swh :topleft  vnew<C-R>=expand("%:p:h") . '/'<CR>
" nmap <leader>swl :botright vnew<C-R>=expand("%:p:h") . '/'<CR>
" nmap <leader>swk :topleft  new<C-R>=expand("%:p:h") . '/'<CR>
" nmap <leader>swj :botright new<C-R>=expand("%:p:h") . '/'<CR>

" Split Buffer
" nmap <leader>sh :leftabove  vnew<C-R>=expand("%:p:h") . '/'<CR>
" nmap <leader>sl :rightbelow vnew<C-R>=expand("%:p:h") . '/'<CR>
" nmap <leader>sk :leftabove  new<C-R>=expand("%:p:h") . '/'<CR>
" nmap <leader>sj :rightbelow new<C-R>=expand("%:p:h") . '/'<CR>


" Buffer handeling
" nmap <leader>bh :bnext<CR>
" nmap <leader>bl :bp<CR>

" Find files
" nmap <leader>f <C-p>
" nmap <leader>f :find <C-R>
" nmap <leader>s :Ack! <C-R>

"Display matching
" set wildmenu wildmode=longest:full,full 

" Window split settings
" highlight TermCursor ctermfg=red guifg=red
" set splitbelow
" set splitright

" Terminal settings
" map <F4> :tabnew <CR>:terminal<CR>i
" if has('nvim')
"   tnoremap <Esc> <C-\><C-n>
" endif

" Window navigation in VIM function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
" func! s:mapMoveToWindowInDirection(direction)
"     func! s:maybeInsertMode(direction)
"         stopinsert
"         execute "wincmd" a:direction
"
"         if &buftype == 'terminal'
"             startinsert!
"         endif
"     endfunc
"
"     execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
"                 \ "<C-\\><C-n>"
"                 \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
"     execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
"                 \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
" endfunc
" for dir in ["h", "j", "l", "k"]
"     call s:mapMoveToWindowInDirection(dir)
" endfor

" -------------------------
"  Commands
"  ------------------------

" Format elixir files on save automatically
" autocmd BufWritePost *.exs,*.ex silent :!mix format %
