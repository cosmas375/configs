vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>h", function() vim.cmd("wincmd h") end)
vim.keymap.set("n", "<leader>j", function() vim.cmd("wincmd j") end)
vim.keymap.set("n", "<leader>k", function() vim.cmd("wincmd k") end)
vim.keymap.set("n", "<leader>l", function() vim.cmd("wincmd l") end)
