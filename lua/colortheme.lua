local colors = require('ayu.colors')

require('ayu').setup({
    mirage = false,
    overrides = {
        VertSplit = { fg = '#634811' },
        WhichKeyBorder = { fg = '#634811' },
        LineNr = { fg = '#706f6e' },
        ['@parameter'] = { fg = '#cb9ff8' },
        ['@number'] = { fg = '#cb9ff8' },
        ['@attribute'] = { fg = '#f29668' },
        ['@attribute.builtin'] = { fg = '#f29668' },
        ['@variable.builtin'] = { fg = '#f07178' },
        IndentBlanklineSpaceCharBlankline = { fg = '#393f49' },
        IndentBlanklineSpaceChar = { fg = '#393f49' },
        IndentBlanklineChar = { fg = '#242a35' },
    },
})

require('ayu').colorscheme()

-- Hide the tildas after EOF
vim.api.nvim_command('highlight EndOfBuffer guifg=black')
