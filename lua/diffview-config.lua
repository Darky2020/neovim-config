local wk = require("which-key")

wk.register({
    ["<leader>g"] = {
        "+Git..."
    },
    ["<leader>gd"] = {
        ":DiffviewFileHistory %<CR>",
        "Git diff current file"
    },
    ["<leader>gh"] = {
        ":DiffviewFileHistory<CR>",
        "Git commit history"
    },
})

require('diffview').setup({})
