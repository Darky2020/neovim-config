-- Disable it for dashboard
vim.g.indent_blankline_filetype_exclude = {
    "dashboard",
    "lspinfo",
    "packer",
    "checkhealth",
    "help",
    "man",
    "",
}

vim.g.indent_blankline_show_first_indent_level = false
vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.opt.list = true
vim.opt.listchars = {
    tab = "───",
    space = "⋅",
    eol = "↴",
}
