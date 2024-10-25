require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "clangd", "tsserver" },
}

require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


