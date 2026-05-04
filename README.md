# Minimal but Fast NeoVim Config for C and Go
<img width="1365" height="767" alt="image" src="https://github.com/user-attachments/assets/5657428b-6ca5-4368-8947-56b4be8bc745" />

# Features
- Plugin manager`lazy.nvim`
- Plugins: See `lua/plugins`
- LSP: `vim.lsp` (clangd, gopls)
- Theme: carbonfox

# Structure
```
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── autocmd.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   ├── lsp.lua
│   │   ├── lualine-config.lua
│   │   └── options.lua
│   └── plugins
│       ├── blink.lua
│       ├── bufferline.lua
│       ├── colorscheme.lua
│       ├── conform.lua
│       ├── flash.lua
│       ├── lualine.lua
│       ├── minipairs.lua
│       ├── snacks.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       └── whichkey.lua
└── README.md
```
