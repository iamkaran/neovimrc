-- Snacks notification history
vim.keymap.set("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Show notification history" })

-- Navigation
vim.keymap.set("n", "<A-d>", "<C-d>")
vim.keymap.set("n", "<A-u>", "<C-u>")

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

-- 1. Use an ALL CAPS variable so Shada explicitly tracks it
if vim.g.DIAGNOSTICS_ON == nil then
  vim.g.DIAGNOSTICS_ON = true
end

-- 2. Wait until after Shada loads to read the variable and apply it
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.diagnostic.config({
      virtual_text = vim.g.DIAGNOSTICS_ON,
      underline = vim.g.DIAGNOSTICS_ON,
      signs = vim.g.DIAGNOSTICS_ON,
    })
  end,
})

-- 3. The toggle function (remains the same but updates the ALL CAPS key)
vim.keymap.set('n', '<leader>td', function()
  vim.g.DIAGNOSTICS_ON = not vim.g.DIAGNOSTICS_ON
  vim.diagnostic.config({
    virtual_text = vim.g.DIAGNOSTICS_ON,
    underline = vim.g.DIAGNOSTICS_ON,
    signs = vim.g.DIAGNOSTICS_ON,
  })
  print("Diagnostics: " .. (vim.g.DIAGNOSTICS_ON and "ON" or "OFF"))
end, { desc = 'Toggle and remember diagnostics' })

-- Unmaps
vim.keymap.set("n", "<A-b>", "<nop>")
vim.keymap.set("i", "<A-b>", "<nop>")
