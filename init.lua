-- ##################
-- # NixOS x NeoVim #
-- ##################
--
-- Karanveer's NeoVim Config
-- Completely handwritten, no AI Slop, no Copy Pasting, no Distro.

-- Remap leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Lualine setup
-- require('lualine').setup {
--     options = {
--         icons_enabled = true,
--         theme = 'auto',
--         component_separators = { left='>', right='<' },
--         section_separatros = { left='<<', right='<<' },
--     }
-- }

-- Require sub directories
require("config")
