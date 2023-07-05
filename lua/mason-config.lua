require("mason").setup({
    ensure_installed = {
        "debugpy",
        "black",
        "ruff",
        "mypy",
        "stylua",
        "prettier",
        "shellcheck",
        "shfmt",
        "rustfmt",
        "cppcheck",
        "cspell",
    },
})

require("mason-lspconfig").setup()
