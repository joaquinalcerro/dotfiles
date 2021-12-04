if exists('g:vscode')
  source $HOME/.config/nvim/vscode/vsCode_settings.vim
  source $HOME/.config/nvim/vscode/vsCode_mappings.vim
else
  " -------------------------
  "  Source Files
  "  ------------------------
  source $HOME/.config/nvim/general/plugins.vim
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/general/mappings.vim
  source $HOME/.config/nvim/general/colors.vim
  source $HOME/.config/nvim/filetype.vim

  source $HOME/.config/nvim/coc-config/plugin-config/coc.vim
  source $HOME/.config/nvim/coc-config/plugin-config/coc-snippets.vim
  source $HOME/.config/nvim/coc-config/plugin-config/coc-explorer.vim

  " if has('nvim-0.5')
  "   "  Native neovim LSP Configuration
  "   source $HOME/.config/nvim/general/lsp-config.vim
  "   luafile $HOME/.config/nvim/general/compe-config.lua
  "   luafile $HOME/.config/nvim/general/elixir-lsp.lua
  " else
  "   "  CoC Configuration
  "   source $HOME/.config/nvim/coc-config/plugin-config/coc.vim
  "   source $HOME/.config/nvim/coc-config/plugin-config/coc-snippets.vim
  "   source $HOME/.config/nvim/coc-config/plugin-config/coc-explorer.vim
  " endif
endif
