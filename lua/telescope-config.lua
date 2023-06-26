local builtin = require('telescope.builtin')
local wk = require("which-key")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', 'gd',         builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr',         builtin.lsp_references, {})

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

require('telescope').setup({
    defaults = {
        layout_config = {
            width = 0.96,
        },
        path_display = function(opts, path)
            local sections = {}

            -- Extract sections by splitting the path using the path separator
            for section in string.gmatch(path, "[^/]+") do
                table.insert(sections, section)
            end

            local result = ""
            if #sections < 3 then
                result = path -- Use the whole path if less than 3 sections
            else
                -- Concatenate the last three sections with path separators
                result = table.concat(sections, "/", #sections - 2)
            end

            -- Trim the left side of the result if it's larger than 28 characters
            if #result > 28 then
                local trimLength = #result - 28
                result = "…" .. string.sub(result, trimLength + 1)
            end

            return result
        end,
        color_devicons = true,
        dynamic_preview_title = true,
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = 'smart_case', -- or "ignore_case" or "respect_case"
        },
   },
})

-- builtin.lsp_references({
--     show_line = false
-- })

require('telescope').load_extension('fzf')

-- Prevent telescope from entering insert mode when opening a file
vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
        if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
        end
    end,
})
