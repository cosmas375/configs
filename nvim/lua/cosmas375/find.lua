vim.cmd [[set path=$PWD/**]]

vim.g.bufferline_show_bufnr = 0

vim.opt.hidden = true

vim.opt.wildignorecase = true
vim.opt.wildoptions = "fuzzy,pum"

vim.keymap.set("n", "<C-p>", [[:find ]])
vim.keymap.set("n", "J", vim.cmd.bp)
vim.keymap.set("n", "K", vim.cmd.bn)
vim.keymap.set("n", "<C-w>", function() vim.cmd("bp") pcall(function() vim.cmd("bd #") end) end)

vim.keymap.set("n", "<leader>h", function() vim.cmd("wincmd h") end)
vim.keymap.set("n", "<leader>j", function() vim.cmd("wincmd j") end)
vim.keymap.set("n", "<leader>k", function() vim.cmd("wincmd k") end)
vim.keymap.set("n", "<leader>l", function() vim.cmd("wincmd l") end)
