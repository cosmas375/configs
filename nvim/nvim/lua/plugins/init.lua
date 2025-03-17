local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'alexxGmZ/e-ink.nvim'

Plug 'bling/vim-bufferline'

Plug 'neovim/nvim-lspconfig'

Plug 'mfussenegger/nvim-lint'

Plug 'mhartington/formatter.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'numToStr/Comment.nvim'

vim.call('plug#end')
