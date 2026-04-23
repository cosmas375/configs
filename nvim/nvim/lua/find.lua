-- find
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

-- grep
vim.opt.grepprg = 'grep -rn --exclude-dir=node_modules --exclude-dir=.next'
vim.api.nvim_create_user_command(
  'Grep',
  function(opts)
    local pattern = opts.fargs[1]
    local path = opts.fargs[2]

    if path == nil then path = '' end

    vim.cmd('grep ' .. pattern .. path)
    vim.cmd('copen')
  end,
  {
    nargs = '+',
  }
)
vim.keymap.set("n", "<C-S-p>", [[:Grep ]])
vim.keymap.set("n", "<A-C-S-p>", 'copen') -- results window
