require("dashboard").setup({
    theme = 'hyper',
    config = {
        footer = {},
        header = {
            '  ',
            '   ▐▀▄      ▄▀▌   ▄▄▄▄▄▄▄             ',
            '   ▌▒▒▀▄▄▄▄▀▒▒▐▄▀▀▒██▒██▒▀▀▄          ',
            '  ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄        ',
            '  ▌▒▒▒▒▒▒▒▒▒▒▒▒▒▄▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄      ',
            '▀█▒▒█▌▒▒█▒▒▐█▒▒▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌     ',
            '▀▌▒▒▒▒▒▀▒▀▒▒▒▒▒▀▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐  ▄▄ ',
            '▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌▄█▒█ ',
            '▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐▒█▀ ',
            '▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐▀   ',
            ' ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌     ',
            '  ▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐      ',
            '  ▐▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▌      ',
            '    ▀▄▄▀▀▀▀▄▄▀▀▀▀▀▀▄▄▀▀▀▀▀▀▄▄▀        ',
            '  '
        },
        shortcut = {
            {
                desc = 'Config',
                group = '@property',
                action = 'cd ~/.config/nvim/ | e ~/.config/nvim/init.lua',
                key = 'c'
            },
            {
                desc = 'ToDo',
                group = '@parameter',
                action = 'e ~/.config/nvim/misc/ToDo.txt',
                key = 't'
            },
            {
                desc = 'Packer Sync',
                group = '@string',
                action = 'PackerSync',
                key = 's'
            },
            {
                desc = 'Close dashboad',
                group = '',
                action = 'bd',
                key = '<ESC>'
            },
        },
    },
})
