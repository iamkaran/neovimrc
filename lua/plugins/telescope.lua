return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader><leader>', "<cmd>Telescope find_files<cr>", desc = 'Telescope find files' },
    }
}
