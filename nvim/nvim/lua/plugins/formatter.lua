local formatter = require("formatter");
local util = require "formatter.util"

formatter.setup {
    logging = false,

    filetype = {
        typescript = {
            require("formatter.filetypes.typescript").prettier,
        },
        javascript = {
            require("formatter.filetypes.javascript").prettier,
        },
        json = {
            require("formatter.filetypes.json").prettier,
        },
        vue = {
            require("formatter.filetypes.vue").prettier,
        },
        c = {
            require("formatter.filetypes.c").clangformat,
        },
        cpp = { -- for header files
            require("formatter.filetypes.c").clangformat,
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
        },
    }
}

vim.keymap.set('n', '<leader>f', vim.cmd.Format)

vim.api.nvim_create_augroup("__formatter__", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
