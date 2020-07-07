" Explorer

nmap ff :CocCommand explorer<CR>
" nmap F :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
