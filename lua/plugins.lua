return {
    {
      'stevearc/conform.nvim',
      config = function()
        require("conform").setup({
          formatters = {
            zig_fmt = {
                command = "zig",
                args = { "fmt", "--stdin" },
                stdin = true,
            },
            clang_fmt = {
                command = "clang-format",
                args = { "-style=webkit" },
                stdin = true,
            },
          },
          formatters_by_ft = {
            go = { "goimports", "gofumpt"},
            zig = { "zig_fmt" },
            cpp = { "clang_fmt" },
          },
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
          pattern = "*",
          callback = function(args)
            require("conform").format({ bufnr = args.buf })
          end,
        })
      end
    },

    {
      "folke/flash.nvim",
      event = "VeryLazy",
      ---@type Flash.Config
      opts = {},
      keys = {
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
      },
    },

    {
      "stevearc/oil.nvim",
      lazy = false, 
      cmd = { "Oil" },
      opts = {
        -- Strict ls -l style output
        columns = {
          "permissions",
          "size",
          "mtime",
        },
        view_options = {
          show_hidden = true,
        },
        -- Optional: Set to true if you want Oil to open when editing directories
        -- This requires the plugin to be loaded, conflicting with strict lazy loading
        default_file_explorer = true,
      },
      keys = {
        {
          "<leader>e",
          function() require("oil").open() end,
          desc = "Open Oil file explorer",
        },
      },
    },

    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")
            telescope.setup({
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
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        end,
    },
    {
            "nvim-treesitter/nvim-treesitter",
            branch = "main",
            build = ":TSUpdate",
            
            dependencies = {
                "nvim-treesitter/nvim-treesitter-textobjects",
            },
            
            config = function()
                -- On the `main` branch, setup is strictly for parser installation management.
                require("nvim-treesitter").setup({
                    ensure_installed = {
                        "bash", "c", "go", "json", "lua", "python", "vim", "vimdoc", "query", "zig",
                    },
                    auto_install = true,
                    
                    -- textobjects still needs initialization, but highlight/indent are gone.
                    textobjects = {
                        enable = true,
                    },
                })
    
                -- Natively attach Treesitter to every buffer Neovim opens
                vim.api.nvim_create_autocmd("FileType", {
                    group = vim.api.nvim_create_augroup("NativeTreesitter", { clear = true }),
                    callback = function()
                        pcall(vim.treesitter.start)
                    end,
                })
            end,
        }
}
