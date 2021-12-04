" if has('nvim-0.5')
"   nnoremap ff :NERDTreeToggle<CR>
" endif

" Toggle lineIndent
nmap <leader>id :IndentLinesToggle<CR>    

" Toggle numbers
nmap <leader>nn :set number! relativenumber!<CR>    

" Note taking keybindings
nmap <leader>dt :put=strftime('%c')<CR>i<BS><space>jj

" Return to previous buffer
nnoremap tb :b#<CR>

" Remap * to add count in the search
nnoremap * *<C-O>:%s///gn<CR>

" Edit/Source my VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Easy exit from insert mode
inoremap jj <ESC>
inoremap <esc> <nop>

" Save files
nnoremap <leader>ss :wa<CR>

" Vim Git integration mappings
nmap <leader>df :Gvdiffsplit<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gl :Glog<CR>

" Vim Git Gutter Plugin Configuration
nmap <leader>j <Plug>(GitGutterNextHunk)
nmap <leader>k <Plug>(GitGutterPrevHunk)
nmap <leader>gg :GitGutterToggle<CR>

" Toggle vim airline status bar
nmap <leader>aa :AirlineToggle<CR>

" Tabs configuration
nmap <F5> :tabnew<CR>
nmap <F7> :tabprevious<CR>
nmap <F9> :tabnext<CR>

" Clear search highlight
nmap <leader><CR> :nohl<CR>

" Split window
nmap <leader>swh :topleft  vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>swl :botright vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>swk :topleft  new<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>swj :botright new<C-R>=expand("%:p:h") . '/'<CR>

" Split Buffer
nmap <leader>sh :leftabove  vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>sl :rightbelow vnew<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>sk :leftabove  new<C-R>=expand("%:p:h") . '/'<CR>
nmap <leader>sj :rightbelow new<C-R>=expand("%:p:h") . '/'<CR>

" Buffer handeling
nmap <leader>bh :bnext<CR>
nmap <leader>bl :bp<CR>

" Find files
nnoremap <leader>f :find<Space>
nmap <leader>s :Rg<Space>
" nmap <leader>s :Ack!<Space>


" Terminal settings
map <F4> :tabnew <CR>:terminal<CR>i
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

" Window navigation in VIM function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
    func! s:maybeInsertMode(direction)
        stopinsert
        execute "wincmd" a:direction

        if &buftype == 'terminal'
            startinsert!
        endif
    endfunc

    execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
                \ "<C-\\><C-n>"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
    execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
endfunc
for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor
