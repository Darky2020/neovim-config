require("trouble").setup({})
local wk = require("which-key")

wk.register({
    ["<leader>i"] = {
        ":TroubleToggle document_diagnostics<CR>",
        "Toggle file diagnostics",
    },
})
