vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>

vnoremap ! :s!^!\!!<cr>
vnoremap -! :s!^\!!!<cr>

vnoremap % :s%^%\%%<cr>
vnoremap -% :s/^%//g<cr>
imap jj <Esc>
nnoremap ,p iimport IPython; IPython.embed()

