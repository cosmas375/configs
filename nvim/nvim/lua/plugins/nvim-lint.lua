local lint = require('lint')

lint.linters_by_ft = {
    javascript = {'eslint'},
    typescript = {'eslint'},
    c = {'clangtidy'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        lint.try_lint()
    end,
})
