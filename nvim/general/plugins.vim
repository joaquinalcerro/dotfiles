"" ---------------------------------------------
"  Load plugins with minpack
" --------------------------------------------
packadd minpac
call minpac#init()

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
  call minpac#add('tomtom/tlib_vim')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-surround')
  call minpac#add('elixir-editors/vim-elixir')
  call minpac#add('slashmili/alchemist.vim')
  call minpac#add('jlanzarotta/bufexplorer')
  call minpac#add('dracula/vim', {'name': 'dracula'})
  call minpac#add('tomasiser/vim-code-dark')
  call minpac#add('jremmen/vim-ripgrep')
  " call minpac#add('mileszs/ack.vim')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('christoomey/vim-tmux-navigator')
  call minpac#add('ctrlpvim/ctrlp.vim')
  call minpac#add('dracula/zsh')
  call minpac#add('elixir-lsp/elixir-ls')
  call minpac#add('SirVer/Ultisnips')
  call minpac#add('honza/vim-snippets')
  call minpac#add('morhetz/gruvbox')
  call minpac#add('elmcast/elm-vim')
endif
