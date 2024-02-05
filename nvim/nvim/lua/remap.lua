vim.g.mapleader = " "

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>h", function() vim.cmd("wincmd h") end)
vim.keymap.set("n", "<leader>j", function() vim.cmd("wincmd j") end)
vim.keymap.set("n", "<leader>k", function() vim.cmd("wincmd k") end)
vim.keymap.set("n", "<leader>l", function() vim.cmd("wincmd l") end)

-- buffer navigation
vim.keymap.set("n", "J", vim.cmd.bp)
vim.keymap.set("n", "K", vim.cmd.bn)
vim.keymap.set("n", "x", function() vim.cmd("bp") pcall(function() vim.cmd("bd #") end) end)
