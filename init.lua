vim.g.mapleader = " "

require("plugins")
require("colortheme")
require("file-explorer")
require("mason-config")
require("null-ls-config")
require("python-lsp")
require("lua-lsp")
require("cpp-lsp")
require("autocompletion")
require("dap-config")
require("keymaps")
require("statusline")
require("buffertabs")
require("windowpicker")
require("treesitter-config")
require("toggleterm-config")
require("telescope-config")
require("indent-blankline-config")
require("diffview-config")
require("trouble-config")

-- Share clipboard with the system one
vim.opt.clipboard = "unnamedplus"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4

-- Line width
vim.o.colorcolumn = "80"

-- Set the language to english
vim.api.nvim_exec("language en_US", true)

-- Hide the status line
vim.o.cmdheight = 0

-- Have only one status bar at the bottom.
-- Use it to have horizontal split lines
vim.opt.laststatus = 3

-- Don't wrap the lines
vim.opt.wrap = false

-- Keep the cursor that many lines from the border when scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Highlight the current line
vim.opt.cursorline = true

-- Ignore case when searching
vim.opt.ignorecase = true

-- Convert ukrainian keys into english keys
vim.opt.langmap =
"ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ї},ФA,ІS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Є\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ї],фa,іs,вd,аf,пg,рh,оj,лk,дl,є',яz,чx,сc,мv,иb,тn,ьm"

-- Round the indent to a multiple of tab width
vim.opt.shiftround = true

-- Safe the undo history
vim.opt.undofile = true

-- Switch the current directory to match the opened file
vim.opt.autochdir = true

-- Lets us select one more character in visual mode at the end
vim.opt.virtualedit = "onemore"

-- Move to next/prev lines with H and L
vim.opt.whichwrap = "h,l,b,s"

-- Draw a border around diagnostic windows
vim.diagnostic.config({
    float = {
        border = "single",
    },
})
