vim.cmd [[set path=$PWD/**]]

vim.g.bufferline_show_bufnr = 0

vim.opt.hidden = true

vim.opt.wildignorecase = true
vim.opt.wildignore = {
    '*/node_modules/*',
    '*/__pycache__/*',
}
vim.opt.wildoptions = "fuzzy,pum"

vim.keymap.set("n", "<C-p>", [[:find ]])
vim.keymap.set("n", "J", vim.cmd.bp)
vim.keymap.set("n", "K", vim.cmd.bn)
vim.keymap.set("n", "x", function() vim.cmd("bp") pcall(function() vim.cmd("bd #") end) end)
