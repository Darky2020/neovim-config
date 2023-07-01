return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/vim-vsnip")
    use("saadparwaiz1/cmp_luasnip")

    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    use("Shatur/neovim-ayu")

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })

    use({
        "akinsho/bufferline.nvim",
        tag = "*",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })

    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("barbecue").setup()
        end,
    })

    use({
        "s1n7ax/nvim-window-picker",
        tag = "v1.*",
    })

    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    })

    use("nvim-treesitter/playground")
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })
    use({
        "rafamadriz/friendly-snippets",
        {
            "L3MON4D3/LuaSnip",
            after = "nvim-cmp",
            config = function()
                require("luasnip.loaders.from_vscode").load({})
            end,
        },
    })

    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
    })

    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    })

    use({ "junegunn/fzf", run = ":call fzf#install()" })
    use("junegunn/fzf.vim")

    use({
        "folke/which-key.nvim",
        config = function()
            require("whichkey-config")
        end,
    })

    use({
        "glepnir/dashboard-nvim",
        after = "telescope.nvim",
        event = "VimEnter",
        config = function()
            require("dashboard-config")
        end,
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    use({
        "cappyzawa/trim.nvim",
        config = function()
            require("trim").setup({})
        end,
    })

    use("lukas-reineke/indent-blankline.nvim")
    use("sindrets/diffview.nvim")

    use({
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    })
end)
