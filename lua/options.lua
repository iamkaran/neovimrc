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

vim.keymap.set("n", "<A-d>", "<C-d>")
vim.keymap.set("n", "<A-u>", "<C-u>")
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("n", "<A-b>", "<nop>")
vim.keymap.set("i", "<A-b>", "<nop>")
vim.keymap.set("i", "<Select>", "<Esc><S-a>")

vim.cmd([[autocmd FileType * set formatoptions-=ro]]) -- No auto comment insertion

local modes = {
  n = "NORMAL", i = "INSERT", v = "VISUAL", V = "V-LINE", ["\22"] = "V-BLOCK",
  c = "COMMAND", s = "SELECT", S = "S-LINE", ["\19"] = "S-BLOCK",
  R = "REPLACE", r = "PROMPT", ["!"] = "SHELL", t = "TERMINAL", nt = "NTERM",
}

function _G.statusline_mode()
  return modes[vim.api.nvim_get_mode().mode] or vim.api.nvim_get_mode().mode
end

vim.o.laststatus = 3
vim.o.statusline = " %{v:lua.statusline_mode()} | %f %m%r%h%w%=%y %l:%c  %P "

-- read from saved colorscheme
-- press <leader>cd and press enter on any colorscheme to create a save if not already
local colorscheme = vim.fn.readfile("colorscheme.txt")
vim.cmd.colorscheme(colorscheme)

function open_colorscheme_switcher()
    local colorschemes = vim.fn.getcompletion('', 'color')
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, true, colorschemes)
    local colorscheme_window = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        row = 80,
        col = 100,
        width = 30,
        height = 10,
        border = "single",
    })
    vim.keymap.set("n", "<CR>", function()
        local selected = vim.api.nvim_get_current_line()
        vim.cmd.colorscheme(selected)
        -- save colorscheme
        vim.fn.writefile(selected, 'colorscheme.txt', 'b')
    end, { buffer = 0 })
end

vim.keymap.set("n", "<leader>cd", open_colorscheme_switcher)
