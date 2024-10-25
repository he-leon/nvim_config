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
" Use FormatJson for formatting Python
autocmd FileType json nnoremap <Leader>f :call FormatJson()<CR>
" Select next/pref buffer with (CTRL+)Tab
nnoremap  <Tab> :bn<CR>
nnoremap  <S-Tab> :bp<CR>
" Use Alt-hjkl and seamless tmux integration for window navigation
nnoremap <silent> <M-h> <Cmd>NvimTmuxNavigateLeft<CR>
nnoremap <silent> <M-j> <Cmd>NvimTmuxNavigateDown<CR>
nnoremap <silent> <M-k> <Cmd>NvimTmuxNavigateUp<CR>
nnoremap <silent> <M-l> <Cmd>NvimTmuxNavigateRight<CR>
nnoremap <silent> <M-\> <Cmd>NvimTmuxNavigateLastActive<CR>
nnoremap <silent> <M-Space> <Cmd>NvimTmuxNavigateNext<CR>

nnoremap <silent> <M-V> <C-w>v
nnoremap <silent> <M-M> <C-w>s

" Simple JSON formatting function
function! FormatJson()
python << EOF
import vim
import json
try:
    buf = vim.current.buffer
    json_content = '\n'.join(buf[:])
    content = json.loads(json_content)
    sorted_content = json.dumps(content, indent=4, sort_keys=True)
    buf[:] = sorted_content.split('\n')
except Exception as e:
    print(e)
EOF
endfunction

" Correctly detect qml filetype
au BufRead,BufNewFile *.qml set filetype=qml
" Use cpp lsp for Arduino files
au BufRead,BufNewFile *.ino set filetype=cpp
