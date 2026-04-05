-- npm install -g typescript typescript-language-server

vim.lsp.config.ts_ls = {
    init_options = {
        plugins = {
            require'lsp/vue'.vue_plugin,
        }
    },
    filetypes = { 'typescript', 'javascript', 'vue', 'typescriptreact' },
}

vim.lsp.enable({'ts_ls'})
