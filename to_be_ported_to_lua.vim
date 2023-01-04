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
" Use Alt-hjkl and seamless tmux integration for window navigation
nnoremap <silent> <M-h> <Cmd>NvimTmuxNavigateLeft<CR>
nnoremap <silent> <M-j> <Cmd>NvimTmuxNavigateDown<CR>
nnoremap <silent> <M-k> <Cmd>NvimTmuxNavigateUp<CR>
nnoremap <silent> <M-l> <Cmd>NvimTmuxNavigateRight<CR>
nnoremap <silent> <M-\> <Cmd>NvimTmuxNavigateLastActive<CR>
nnoremap <silent> <M-Space> <Cmd>NvimTmuxNavigateNext<CR>
