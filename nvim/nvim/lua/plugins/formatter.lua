local formatter = require("formatter");
local util = require "formatter.util"

formatter.setup {
    logging = false,

    filetype = {
        typescript = {
            require("formatter.filetypes.typescript").prettier,
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
        },
    }     
}

vim.keymap.set('n', '<leader>f', vim.cmd.Format)
