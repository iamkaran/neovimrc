return {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    -- treesitter-config.lua

    configs = function()
        require("nvim-treesitter.configs").setup({
          -- Add a language of your choice
          ensure_installed = {
              "bash",
              "json",
              "c",
              "python",
              "lua",
              "go",
          },
          sync_install = false,
          ignore_install = { "" }, -- List of parsers to ignore installing
          highlight = {
            enable = true, -- false will disable the whole extension
            disable = { "" }, -- list of language that will be disabled
            additional_vim_regex_highlighting = true,

          },
          indent = { enable = true, disable = { "yaml" } },
          rainbow = {
            enable = true,
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
          }
        })
    end
}
