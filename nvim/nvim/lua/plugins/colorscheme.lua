-- -- quiet
-- vim.o.background = "dark"
-- vim.cmd([[colorscheme quiet]])

-- e-ink
vim.o.background = "dark"
require("e-ink").setup()
vim.cmd.colorscheme "e-ink"

-- update the lines numbers color
local mono = require("e-ink.palette").mono()
vim.api.nvim_set_hl(0, "LineNr", { fg = mono[8] })
