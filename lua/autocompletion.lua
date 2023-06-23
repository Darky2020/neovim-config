vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert', 'preview' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require'cmp'

cmp.setup({
    completion = {
        keyword_length = 2
    },

    sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lua" },
        { name = "buffer" },
        { name = "vsnip" },
        { name = "luasnip" },
    },

    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    formatting = {
        fields = { "menu", "abbr", "kind" },
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = "λ",
                vsnip = "S",
                luasnip = "S",
                buffer = "b",
                path = "p"
            }
            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },

    mapping = {
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Up>'] = cmp.mapping.select_prev_item(
            { behavior = cmp.SelectBehavior.Select }
        ),
         ['<S-Tab>'] = cmp.mapping.select_prev_item(
            { behavior = cmp.SelectBehavior.Select }
        ),
        ['<Down>'] = cmp.mapping.select_next_item(
            { behavior = cmp.SelectBehavior.Select }
        ),
        ['<Tab>'] = cmp.mapping.select_next_item(
            { behavior = cmp.SelectBehavior.Select }
        ),
        ['<CR>'] = cmp.mapping.confirm(),
    }
})
