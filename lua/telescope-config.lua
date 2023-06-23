local builtin = require('telescope.builtin')
local wk = require("which-key")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

wk.register({
    ["<leader>ff"] = {
        "Find files"
    },
    ["<leader>fg"] = {
        "Search text"
    },
    ["<leader>st"] = {
        "Search text"
    },
    ["<leader>fb"] = {
        "Find buffers"
    },
    ["<leader>fh"] = {
        "Find docs"
    },
})

-- Prevent telescope from entering insert mode when opening a file
vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
        if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
        end
    end,
})
