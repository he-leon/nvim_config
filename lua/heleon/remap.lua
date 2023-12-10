vim.g.mapleader = " "

-- Moving text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visual selection up" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join with next line" })

-- Movement
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half page up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to next match and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to prev. match and center" })

-- Copy/Paste
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste an keep content in paste buffer" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to clipboard" })
vim.keymap.set({ "n", "v" }, "d", [["_d]], { desc = "Dont yank deleted text to register" })

-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format code" })

-- Search and replace
vim.keymap.set("v", "<leader>s", '"hy:%s/<C-r>h//gc<left><left><left>', { desc = "Replace content of visual selection" })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word under cursor" })

-- Saving
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- File permissions
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make executable" })

-- Closes buffer without closing window.
vim.keymap.set("n", "qq", ":bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close buffer" })

-- Lsp/Linting
vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float({"line"})<CR>',
    { noremap = true, silent = true, desc = "Show diagnostics popup" })

-- Show undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undo tree" })

vim.cmd 'source ~/.config/nvim/to_be_ported_to_lua.vim'
