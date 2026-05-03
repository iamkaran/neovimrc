-- #### EDITOR UI ####

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.opt.signcolumn = "yes:1" -- Preserves 1 column for LSP Highlighting
vim.opt.scrolloff = 5 -- Shows 5 lines even when scrolling
vim.opt.showcmd = false
vim.opt.termguicolors = true

-- #### INDENTATION ####

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- #### EXPERIENCE ####

vim.opt.clipboard = "unnamedplus"
vim.opt.incsearch = true -- Moves to match instantly
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.cmd([[autocmd FileType * set formatoptions-=ro]]) -- No auto comment insertion

-- #### OTHERS ####
