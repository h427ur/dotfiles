local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 4 --들여쓰기 칸
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.number = true
opt.relativenumber = false
opt.termguicolors = true
opt.signcolumn = "yes"

opt.encoding = "UTF-8"
opt.bomb = true
opt.cmdheight = 1
opt.scrolloff = 10
opt.mouse:append("a")
