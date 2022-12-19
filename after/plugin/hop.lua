-- place this in one of your configuration file(s)
local hop = require('hop')
hop.setup()
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'ss', ':HopChar1<cr>')
