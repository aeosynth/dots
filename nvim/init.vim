set clipboard=unnamed
set expandtab
set hidden
set inccommand=nosplit
set mouse=n
set shiftwidth=2
set statusline=%f%m%r%=%c,%l/%L

" use a different tool
let g:loaded_netrw=1
let g:loaded_netrwPlugin=1

map f <Plug>Sneak_f
map F <Plug>Sneak_F
" Sneak is invoked with operators via z (because ... surround.vim).
map s <Plug>Sneak_s
map S <Plug>Sneak_S

nn \ Y:@"<cr>
nn <esc> :x<cr>
nn <cr> :
nn <space>t :sp +startinsert \| term<cr>
nn <space>ea :sp ~/.config/alacritty/alacritty.yml<cr>
nn <space>ee :sp $MYVIMRC<cr>
nn <space>ei :sp ~/notes/ideas.md<cr>
nn <space>et :sp ~/notes/todo.md<cr>

" restore cursor
au BufRead *
\ if &ft !~# 'commit'
\ | exe 'normal! g`"'
\ | endif
" MANPAGER = nvim
au BufRead /tmp/man.* set ft=man
" toggle hlsearch
au CmdlineEnter /,\? set hlsearch
au CmdlineLeave /,\? set nohlsearch
" terminal
au TermClose * call feedkeys('q')
