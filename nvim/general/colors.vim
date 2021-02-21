" ---------------------------------------
" Modify ColorScheme with my preferences
" ---------------------------------------
augroup MyColors
    autocmd!
    autocmd ColorScheme * highlight Define cterm=italic ctermfg=176 gui=italic guifg=#C586C0
                      " \ | highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
                      " \ | highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
augroup END


" ---------------------------------------
" Italic Font options
" ---------------------------------------
let g:gruvbox_italic=1

let g:material_style='oceanic'
colorscheme vim-material

" colorscheme dracula
" colorscheme codedark
" colorscheme gruvbox
