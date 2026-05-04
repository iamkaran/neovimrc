return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader><leader>', "<cmd>Telescope find_files<cr>", desc = 'Telescope find files' },
    },
    config = function()
        require("telescope").setup({
            pickers = {
                find_files = {
                    -- hidden = true,
                    find_command = {
                        "fd",
                        "--type", "f",
                        "--hidden",
                        "--exclude", ".git",
                        "--exclude", "go",
                        "--exclude", "node_modules",
                        "--exclude", ".cache",
                        "--exclude", ".local",
                        "--exclude", ".android",
                        "--exclude", ".npm",
                        "--exclude", ".gradle",
                        "--exclude", "Android",
                        "--exclude", ".docker",
                    },
                },
            },
        })
    end,
}
