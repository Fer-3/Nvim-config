
cmd = vim.cmd
opt = vim.opt
cmd("set expandtab")
cmd("set tabstop=2")
cmd("set softtabstop=2")
cmd("set shiftwidth=2")
cmd.colorscheme "gruvbox"

opt.cmdheight = 0
vim.g.mapleader = " "
