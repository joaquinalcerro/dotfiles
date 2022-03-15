require'lspconfig'.elixirls.setup{
    cmd = { "/home/jalcerro/.config/nvim/pack/minpac/start/elixir-ls/release/language_server.sh" },
    on_attach = on_attach,
    capabilities = capabilities
}

