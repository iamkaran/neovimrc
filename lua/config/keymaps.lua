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
