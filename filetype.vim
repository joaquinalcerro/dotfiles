au BufNewFile,BufRead *.note setfiletype notes
if exists("did_load_filetypes")
	  finish
	endif
	augroup filetypedetect
	  au! BufRead,BufNewFile *.drab		setfiletype html
	augroup END
