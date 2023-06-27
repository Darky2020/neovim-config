require('mason').setup({
    ensure_installed = { "debugpy", "black", "ruff" }
})

require('mason-lspconfig').setup()
