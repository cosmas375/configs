-- npm install -g typescript typescript-language-server

require'lspconfig'.ts_ls.setup {
    init_options = {
        plugins = {
            require'lsp/vue'.vue_plugin,
        }
    },
    filetypes = { 'typescript', 'javascript', 'vue' },
}
