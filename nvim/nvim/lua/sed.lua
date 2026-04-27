local function get_command(content_to_replace)
  return ":<C-u>%s/"..content_to_replace.."/".."/g<Left><Left>"
end

local function get_word_under_the_cursor()
  return vim.fn.expand('<cword>')
end

local function get_selected_text()
  local t = vim.fn.getregion(
    vim.fn.getpos("v"),
    vim.fn.getpos("."),
    { type = vim.api.nvim_get_mode().mode }
  )
  return table.concat(t, "\\n")
end

vim.keymap.set(
  "n",
  "<C-S-l>",
  function() return get_command(get_word_under_the_cursor()) end,
  { expr = true }
)
vim.keymap.set(
  "v",
  "<C-S-l>",
  function() return get_command(get_selected_text()) end,
  { expr = true }
)
