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
        typescriptreact = {
            require("formatter.filetypes.typescript").prettier,
        },
        html = {
            require("formatter.filetypes.html").prettier,
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

local group = "__formatter__"

vim.api.nvim_create_augroup(group, { clear = true })

local active = true
local function enable_automatic_formatting()
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = group,
	    command = ":FormatWrite",
    })

    print("Formatting enabled")
end
local function disable_automatic_formatting()
    vim.api.nvim_clear_autocmds({ group = group })

    print("Formatting disabled")
end
local function toggle_autocmd()
    if active then
        disable_automatic_formatting()
    else
        enable_automatic_formatting()
    end

    active = not active
end

vim.keymap.set('n', '<leader>f', vim.cmd.Format)
vim.keymap.set('n', '<leader>ft', toggle_autocmd)

enable_automatic_formatting()
