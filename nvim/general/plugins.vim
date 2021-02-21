"" ---------------------------------------------
"  Load plugins with minpack
" --------------------------------------------
packadd minpac
call minpac#init()

" packadd! dracula is required for dracula theme to work
packadd! dracula
if exists('g:vscode')
  " Easy Motion for vsCode
  call minpac#add('asvetliakov/vim-easymotion')
else
  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('jiangmiao/auto-pairs')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('tomtom/tcomment_vim')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-surround')
  call minpac#add('elixir-lsp/elixir-ls')
  call minpac#add('elixir-editors/vim-elixir')
  call minpac#add('jlanzarotta/bufexplorer')
  call minpac#add('jremmen/vim-ripgrep')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('christoomey/vim-tmux-navigator')
  call minpac#add('SirVer/Ultisnips')
  call minpac#add('honza/vim-snippets')
  call minpac#add('mhinz/vim-mix-format') 
  
  " Color Scheme Themes
  call minpac#add('morhetz/gruvbox')
  call minpac#add('dracula/vim', {'name': 'dracula'})
  call minpac#add('tomasiser/vim-code-dark')
  call minpac#add('hzchirs/vim-material')
endif
