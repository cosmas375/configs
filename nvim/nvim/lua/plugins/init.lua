local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'ellisonleao/gruvbox.nvim'

Plug 'akinsho/bufferline.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'mfussenegger/nvim-lint'

Plug 'mhartington/formatter.nvim'

vim.call('plug#end')
