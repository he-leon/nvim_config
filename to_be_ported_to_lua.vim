vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>

vnoremap ! :s!^!\!!<cr>
vnoremap -! :s!^\!!!<cr>

vnoremap % :s%^%\%%<cr>
vnoremap -% :s/^%//g<cr>
imap jj <Esc>
nnoremap ,p iimport IPython; IPython.embed()
autocmd FileType python nnoremap <Leader>f :Black<CR>

nnoremap  <Tab> :bn<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
