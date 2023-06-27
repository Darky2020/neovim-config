local wk = require("which-key")
local map = vim.api.nvim_set_keymap

wk.register({
    ["<leader>e"] = {
        ":NvimTreeToggle<CR>",
        "Toggle file viewer"
    },
    ["<leader>j"] = {
        "<C-\\><C-n><cmd>FloatingTerminal<cr><C-\\><C-n>",
        "Toggle floating terminal"
    },
    ["<leader>d"] = {
        "1<C-w><C-w>:tabnew<CR>:Dashboard<CR>:IndentBlanklineDisable<CR>",
        "Toggle dashboard"
    },
    ["<leader>/"] = {
        "Comment toggle"
    },
    ["<leader>t"] = {
        "Toggle horizontal terminal"
    },
    ["<leader>v"] = {
        ":lua vim.diagnostic.open_float()<CR>",
        "Show current diagnostic in floating window"
    }
})


-- Better keymaps for commend toggling
map("v", "<leader>/", "gc", {})
map("n", "<leader>/", "gcc", {})

map("n", "<C-s>", ":w<CR>", {})
map("v", "y", "ygv<Esc>", {})

-- Better window movement
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-l>", "<C-w>l", {})

-- Better indenting
map("v", "<", "<gv", {})
map("v", ">", ">gv", {})

-- Better terminal mode movement
map('t', '<esc>', "<C-\\><C-n>", {})
map('t', '<C-h>', "<Cmd>wincmd h<CR>", {})
map('t', '<C-j>', "<Cmd>wincmd j<CR>", {})
map('t', '<C-k>', "<Cmd>wincmd k<CR>", {})
map('t', '<C-l>', "<Cmd>wincmd l<CR>", {})
map('t', '<C-w>', "<C-\\><C-n><C-w>", {})
