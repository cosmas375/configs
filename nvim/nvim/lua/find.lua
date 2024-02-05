vim.cmd [[set path=$PWD/**]]

vim.g.bufferline_show_bufnr = 0

vim.opt.hidden = true

vim.opt.wildignorecase = true
vim.opt.wildignore = {
    '*/node_modules/*',
    '*/dist/*',
    '*/__pycache__/*',
}
vim.opt.wildoptions = "fuzzy,pum"

vim.keymap.set("n", "<C-p>", [[:find ]])
