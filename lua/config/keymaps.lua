-- Snacks notification history
vim.keymap.set("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Show notification history" })

-- Navigation
vim.keymap.set("n", "<A-d>", "<C-d>")
vim.keymap.set("n", "<A-i>", "<C-u>")

vim.keymap.set("i", "<A-d>", "<Esc><C-d>i")
vim.keymap.set("i", "<A-i>", "<Esc><C-u>i")

-- Tabs
vim.keymap.set("n", "tl", "<cmd>bnext<cr>")
vim.keymap.set("n", "th", "<cmd>bprev<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>")

-- Move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==")
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==")

vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<cr>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<cr>==gi")

vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Opening and closing Netrw
vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "netrw" then
        vim.cmd("Rex") -- Rex (Return to Explorer Previous File)
    else
        vim.cmd("Ex") -- Explorer (:Explorer)
    end
end)

-- Diagnostics
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>do', function() vim.diagnostic.open_float({ scope = "line" }) end, { desc = "Open diagnostic float" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { desc = "Telescope diagnostics" })
