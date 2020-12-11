if exists('g:vscode')
  " source $HOME/.config/nvim/vscode/settings.vim
  " source $HOME/.config/nvim/vscode/easymotion.vim
else
  " -------------------------
  "  CoC Configuration
  "  ------------------------
  source ~/.config/nvim/coc-config/plugin-config/coc.vim
  source ~/.config/nvim/coc-config/plugin-config/coc-snippets.vim
  source ~/.config/nvim/coc-config/plugin-config/coc-explorer.vim

  " -------------------------
  "  Source Files
  "  ------------------------
  source $HOME/.config/nvim/general/plugins.vim
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/general/mappings.vim
  source $HOME/.config/nvim/general/colors.vim
  source $HOME/.config/nvim/filetype.vim
endif
