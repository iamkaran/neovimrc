vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.scrolloff = 5
vim.opt.showcmd = false
vim.opt.termguicolors = true
vim.opt.showtabline = 1
vim.opt.hidden = true
vim.opt.switchbuf = "usetab,newtab"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.cmd([[autocmd FileType * set formatoptions-=ro]]) -- No auto comment insertion

vim.keymap.set("n", "<A-d>", "<C-d>")
vim.keymap.set("n", "<A-u>", "<C-u>")
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("n", "<A-b>", "<nop>")
vim.keymap.set("i", "<A-b>", "<nop>")

