-- Opening and closing Netrw
vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "netrw" then
        vim.cmd("Rex") -- Rex (Return to Explorer Previous File)
    else
        vim.cmd("Ex") -- Explorer (:Explorer)
    end
end)

-- Snacks notification history
vim.keymap.set("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Show notification history" })

-- Navigation
vim.keymap.set("n", "<A-j>", "<C-d>")
vim.keymap.set("n", "<A-k>", "<C-u>")

-- Tabs
vim.keymap.set("n", "tl", "<cmd>bnext<cr>")
vim.keymap.set("n", "th", "<cmd>bprev<cr>")

-- Diagnostics
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>do', function() vim.diagnostic.open_float({ scope = "line" }) end, { desc = "Open diagnostic float" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { desc = "Telescope diagnostics" })
