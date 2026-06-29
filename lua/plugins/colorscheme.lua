return {
  "EdenEast/nightfox.nvim",
  name = "nightfox",
  lazy = false, -- Must load immediately
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true, -- Enables native transparency
        styles = {
          comments = "italic",
          keywords = "NONE",
        },
      },
    })
    vim.cmd.colorscheme("habamax")
  end,
}   
