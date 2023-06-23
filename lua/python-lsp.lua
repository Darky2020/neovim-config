local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- lspconfig.pylyzer.setup {
--     cmd = { 'pylyzer', '--server' },
--     filetypes = { 'python' },
--     root_dir = function(fname)
-- 	    local root_files = {
-- 		'setup.py',
-- 		'tox.ini',
-- 		'requirements.txt',
-- 		'Pipfile',
-- 		'pyproject.toml',
-- 	    }
-- 	    return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
--     end,
--     settings = {
--         python = {
--             diagnostics = true,
--             inlayHints = true,
--             smartCompletion = true,
--             checkOnType = false,
--         },
--     },
-- }

lspconfig.pylsp.setup {
    cmd = {"pylsp"},
    filetypes = {"python"},
    settings = {
        pylsp = {
        configurationSources = {"flake8"},
        plugins = {
            jedi_completion = {enabled = true},
            jedi_hover = {enabled = true},
            jedi_references = {enabled = true},
            jedi_signature_help = {enabled = true},
            jedi_symbols = {enabled = true, all_scopes = true},
            pycodestyle = {enabled = false},
            flake8 = {
                enabled = true,
                ignore = {},
                maxLineLength = 160
            },
            mypy = {enabled = false},
            isort = {enabled = false},
            yapf = {enabled = false},
            pylint = {enabled = false},
            pydocstyle = {enabled = false},
            mccabe = {enabled = false},
            preload = {enabled = false},
            rope_completion = {enabled = false}
        }
        }
    },
    on_attach = on_attach
}

--lspconfig.pyright.setup{}
