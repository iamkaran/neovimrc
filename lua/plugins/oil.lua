return {
  "stevearc/oil.nvim",
  -- Use lazy = false if you want it to replace Netrw automatically on directory open
  -- or keep lazy=true and rely on the :Oil command / custom autocmds
  lazy = false, 
  cmd = { "Oil" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
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
}   
