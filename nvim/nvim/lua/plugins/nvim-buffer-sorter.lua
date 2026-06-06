local nvim_buffer_sorter = require("nvim-buffer-sorter")

nvim_buffer_sorter.setup({
    update_callback = function()
        vim.print(vim.api.nvim_call_function('bufferline#get_echo_string', {}))
    end
})

vim.keymap.set("n", "J", nvim_buffer_sorter.go_prev)
vim.keymap.set("n", "K", nvim_buffer_sorter.go_next)

vim.keymap.set("n", "<<", nvim_buffer_sorter.shift_left)
vim.keymap.set("n", ">>", nvim_buffer_sorter.shift_right)

-- close
vim.keymap.set("n", "x", function() vim.cmd("bp") pcall(function() vim.cmd("bw #") end) end)
-- close all except the current
vim.keymap.set(
    "n",
    "<S-C-x>",
    function()
        local buffers = nvim_buffer_sorter.get_buffers_list()
        local current_buffer = vim.api.nvim_get_current_buf()

        for i,v in pairs(buffers) do
            if v == current_buffer then
            else
                vim.cmd("bp")
                pcall(function() vim.cmd("bw "..v) end)
            end
        end
    end
)
