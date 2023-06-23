-- Wacky setup
local _toggleterm = require("toggleterm")

-- Global settigns
_toggleterm.setup({
    size = 10,
    open_mapping = "<leader>t",
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = false,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = false,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal"
        }
    }
})

local Terminal = require("toggleterm.terminal").Terminal

-- Create an instance of a horizontal terminal and toggle it twice to store it on the stack
-- Use that to separate the toggling between horizontal and floating terminals
Terminal:new({
    size = 10,
    open_mapping = "<leader>t",
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = false,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = false,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal"
        }
    }
}):toggle():toggle()

-- Function for splitting horizontal terminals
function split_terminal_right()
    Terminal:new({
        size = 10,
        open_mapping = "<leader>t",
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = false,
        persist_size = true,
        direction = "horizontal",
        close_on_exit = false,
        shell = vim.o.shell,
        float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
                border = "Normal",
                background = "Normal"
            }
        }
    }):open()
end

-- Create an instance of a floating terminal
local floating_terminal = Terminal:new({
    size = 10,
    open_mapping = [[c-j]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = false,
    persist_size = true,
    direction = "float",
    close_on_exit = false,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal"
        }
    }
})

function float_terminal()
    floating_terminal:toggle()
end

-- Keymaps
vim.api.nvim_create_user_command('SplitTerminal', split_terminal_right, {})
vim.api.nvim_create_user_command('FloatingTerminal', float_terminal, {})
vim.keymap.set({"t"}, "<c-s>", "<C-\\><C-n><cmd>SplitTerminal<cr><C-\\><C-n>")
