vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    respect_buf_cwd = true,
    update_focused_file =
    {
        enable = true,
    },
    view = {
        adaptive_size = true
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<F13>', ':NvimTreeFindFileToggle<CR>')
