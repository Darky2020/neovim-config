local lspconfig = require "lspconfig"

lspconfig.pylsp.setup {
    cmd = { "pylsp" },
    filetypes = { "python" },
    settings = {
        pylsp = {
            configurationSources = { "flake8" },
            plugins = {
                jedi_completion = { enabled = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true, all_scopes = true },
                ruff = {
                    enabled = true,
                    lineLength = 80,
                    select = { "A", "B", "C", "D", "E", "F", "G", "I", "N", "Q", "S", "T", "W", "ANN", "ARG", "BLE",
                        "COM", "DJ", "DTZ", "EM", "ERA", "EXE", "FBT", "ICN", "INP", "ISC", "NPY", "PD", "PGH", "PIE",
                        "PL", "PT", "PTH", "PYI", "RET", "RSE", "RUF", "SIM", "SLF", "TCH", "TID", "TRY", "UP", "YTT" },
                    extendSelect = { "I" },
                },
            }
        }
    },
    on_attach = on_attach
}
