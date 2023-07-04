local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "L3MON4D3/LuaSnip",
            config = function()
                require("luasnip.loaders.from_vscode").load({})
            end,
        },
    },
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/vim-vsnip",
    "saadparwaiz1/cmp_luasnip",

    -- {
    --     "mfussenegger/nvim-dap",
    --     dependencies = {
    --         "rcarriga/nvim-dap-ui",
    --         {
    --             "mfussenegger/nvim-dap-python",
    --
    --             setup = function()
    --                 require("dap-python").setup("python3")
    --             end,
    --         },
    --     },
    -- },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    "Shatur/neovim-ayu",

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    },

    {
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    },

    {
        "utilyre/barbecue.nvim",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("barbecue").setup()
        end,
    },

    "s1n7ax/nvim-window-picker",

    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            local ts_update =
                require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    },

    "nvim-treesitter/playground",

    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },

    "rafamadriz/friendly-snippets",

    "akinsho/toggleterm.nvim",

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "glepnir/dashboard-nvim",
                event = "VimEnter",
                config = function()
                    require("dashboard-config")
                end,
                dependencies = { "nvim-tree/nvim-web-devicons" },
            },
        },
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },

    { "junegunn/fzf", build = ":call fzf#install()" },

    "junegunn/fzf.vim",

    {
        "folke/which-key.nvim",
        config = function()
            require("whichkey-config")
        end,
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    {
        "cappyzawa/trim.nvim",
        config = function()
            require("trim").setup({})
        end,
    },

    "lukas-reineke/indent-blankline.nvim",
    "sindrets/diffview.nvim",

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}, {
    change_detection = {
        notify = false,
    },
})
