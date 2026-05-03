return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  config = function()
      require("blink.cmp").setup({
          completion = {
              list = {
                  selection = {
                      preselect = true,
                      auto_insert = true,
                  },
              },
              ghost_text = { enabled = true },
          },

          keymap = {
              preset = "super-tab",
          },
      })
  end,

  -- use a release tag to download pre-built binaries
  version = '1.*',
}
