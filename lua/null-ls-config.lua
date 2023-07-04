local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        -- python
        null_ls.builtins.formatting.ruff,
        null_ls.builtins.formatting.black.with({
            extra_args = { "-l", "80" },
        }),
        null_ls.builtins.diagnostics.mypy.with({
            extra_args = { "--ignore-missing-imports" },
        }),

        -- lua
        null_ls.builtins.formatting.stylua,

        -- js, html, css, formatting
        null_ls.builtins.formatting.prettier,

        -- shell scripting
        null_ls.builtins.code_actions.shellcheck,
        null_ls.builtins.formatting.shfmt,

        -- rust
        null_ls.builtins.formatting.rustfmt,

        -- cpp
        null_ls.builtins.diagnostics.cppcheck,

        -- null_ls.builtins.diagnostics.cspell,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
