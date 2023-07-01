require("window-picker").setup({
    autoselect_one = true,
    include_current_win = true,
    selection_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
    use_winbar = "never",
    show_prompt = true,
    filter_func = nil,

    filter_rules = {
        -- filter using buffer options
        bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "NvimTree", "neo-tree", "notify" },

            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal" },
        },

        -- filter using window options
        wo = {},

        -- if the file path contains one of following names, the window
        -- will be ignored
        file_path_contains = {},

        -- if the file name contains one of following names, the window will be
        -- ignored
        file_name_contains = {},
    },

    fg_color = "#ffffff",
    current_win_hl_color = "#245b73",
    other_win_hl_color = "#245b73",
})
