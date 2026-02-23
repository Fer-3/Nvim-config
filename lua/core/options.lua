cmd = vim.cmd
opt = vim.opt
cmd("set expandtab")
cmd("set tabstop=2")
cmd("set softtabstop=2")
cmd("set shiftwidth=2")
cmd("set number")
cmd("set relativenumber")
cmd.colorscheme "gruvbox"
opt.shortmess:append "c"
opt.cmdheight = 0
vim.g.mapleader = " "

cmd("set completeopt+=noselect")
