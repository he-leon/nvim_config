" Use # to comment stuff in visual mode with # (Bash, Python, ...)
vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>
" Use ! to comment stuff in visual mode with !
vnoremap -! :s!^\!!!<cr>
" Use % to comment stuff in visual mode with %
vnoremap % :s%^%\%%<cr>
vnoremap -% :s/^%//g<cr>
" Use jj to exit insert mode
imap jj <Esc>
" Shortcut to insert IPython debug import
nnoremap ,p iimport IPython; IPython.embed()
" Use Black for formatting Python
autocmd FileType python nnoremap <Leader>f :Black<CR>
" Select next buffer with Tab
nnoremap  <Tab> :bn<CR>
" Use Ctrl-hjkl for window navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
