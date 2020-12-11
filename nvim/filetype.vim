" if exists("did_load_filetypes")
" 	  finish
" 	endif
augroup filetypedetect
  au! BufRead,BufNewFile *.drab set filetype=html
  au! BufRead,BufNewFile *.eex set filetype=html
  au! BufRead,BufNewFile *.note setfiletype notes
augroup END
