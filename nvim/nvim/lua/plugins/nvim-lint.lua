local lint = require('lint')

local oclint_pattern = '([^:]+):(%d+):(%d+): ([^[]+) [^%d]+(%d)'
local oclint_groups = { 'file', 'lnum', 'col', 'message', 'severity' }
local oclint_severity_map = {
    ['1'] = vim.diagnostic.severity.ERROR,
    ['2'] = vim.diagnostic.severity.WARN,
    ['3'] = vim.diagnostic.severity.INFO,
}
local oclint_defaults = {['source'] = 'oclint'}
local oclint_options = {}
lint.linters.oclint = {
  cmd = 'oclint',
  stdin = false, -- or false if it doesn't support content input via stdin. In that case the filename is automatically added to the arguments.
  append_fname = true, -- Automatically append the file name to `args` if `stdin = false` (default: true)
  args = {
      ['--'] = '', -- in order to skip compilation database error
  }, -- list of arguments. Can contain functions with zero arguments that will be evaluated once the linter is used.
  stream = nil, -- ('stdout' | 'stderr' | 'both') configure the stream to which the linter outputs the linting result.
  ignore_exitcode = false, -- set this to true if the linter exits with a code != 0 and that's considered normal.
  env = nil, -- custom environment table to use with the external process. Note that this replaces the *entire* environment, it is not additive.
  parser = require('lint.parser').from_pattern(oclint_pattern, oclint_groups, oclint_severity_map, oclint_defaults, oclint_options)
}

lint.linters_by_ft = {
    javascript = {'eslint'},
    typescript = {'eslint'},
    json = {'eslint'},
    vue = {'eslint'},
    c = {
        'oclint',
        'clangtidy',
    },
}

vim.api.nvim_create_autocmd(
    {
        'BufWritePost',
        'BufEnter',
    },
    {
        callback = function()
            lint.try_lint()
        end,
    }
)
