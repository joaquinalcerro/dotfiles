if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.drab set ft=html
  au! BufRead,BufNewFile *.eex set ft=html
  au! BufRead,BufNewFile *.leex set ft=html
  au! BufRead,BufNewFile *.note set ft=notes
augroup END
