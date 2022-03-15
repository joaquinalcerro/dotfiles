  " -------------------------
  "  Source Files
  "  ------------------------
  source $HOME/.config/nvim/general/plugins.vim
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/general/mappings.vim
  source $HOME/.config/nvim/general/colors.vim
  source $HOME/.config/nvim/filetype.vim

  " COC pakages required
  " source $HOME/.config/nvim/coc-config/plugin-config/coc.vim
  " source $HOME/.config/nvim/coc-config/plugin-config/coc-snippets.vim
  " source $HOME/.config/nvim/coc-config/plugin-config/coc-explorer.vim

  " LSP packages required
  source $HOME/.config/nvim/general/nvim-tree-config.vim
  luafile $HOME/.config/nvim/general/lsp-config.lua
  " luafile $HOME/.config/nvim/general/cmp-config.lua
  " luafile $HOME/.config/nvim/general/elixir-lsp.lua
  luafile $HOME/.config/nvim/general/nvim-tree.lua


