-- zozin's https://github.com/rexim/gruber-darker-theme

local colors = {
    bg = "#181818",
    fg = "#eeeeee",
    comment = "#707070",
    white = "#ffffff",
    light_gray = "#a6a4a4",
    gray = "#96a6c8",
    dark_gray = "#555555",
    green = "#73c936",
    yellow = "#ffdd33",
    brown = "#cc8c3c",
    red = "#ff0000",
    func = "#ffdd33",
}

vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "gruber-darker"

vim.o.background = "dark"
vim.o.termguicolors = true

local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- hi("Normal", { fg = colors.fg, bg = colors.bg })
-- hi("Comment", { fg = colors.dark_gray, italic = true })
-- hi("Constant", { fg = colors.light_gray, bold = true })
-- hi("String", { fg = colors.green, italic = true })
-- hi("Identifier", { fg = colors.fg })
-- hi("Function", { fg = colors.func, bold = true })
-- hi("Keyword", { fg = colors.yellow, bold = true })
-- hi("Type", { fg = colors.gray })
-- hi("@type.builtin", { fg = colors.gray })
-- hi("Special", { fg = colors.gray })
-- hi("Delimiter", { fg = colors.gray })
-- hi("Operator", { fg = colors.light_gray })
-- hi("CursorLineNr", { fg = colors.yellow, bold = true })
-- hi("CursorLine", { bg = colors.bg })
-- hi("Error", { fg = colors.red })
-- hi("WarningMsg", { fg = colors.yellow })
-- hi("VertSplit", { fg = colors.dark_gray })

-- Base
hi("Normal", { fg = colors.fg, bg = colors.bg })

-- Treesitter syntax groups
hi("@comment", { fg = colors.brown })

hi("@constant", { fg = colors.light_gray, bold = true })
hi("@constant.builtin", { fg = colors.light_gray, bold = true })

hi("@string", { fg = colors.green })

hi("@variable", { fg = colors.fg })
hi("@property", { fg = colors.fg })
hi("@variable.builtin", { fg = colors.light_gray })
hi("@variable.member", { fg = colors.gray })
hi("OilDir", { fg = colors.gray })

hi("@spell.markdown", { fg = colors.fg })
hi("@markup.raw.markdown_inline", { fg = colors.gray })
hi("@markup.raw.block.markdown", { fg = colors.gray })

hi("@function", { fg = colors.func })
hi("@function.method.call.go", { fg = colors.gray })
hi("@function.call", { fg = colors.gray })
hi("@function.builtin", { fg = colors.func })

hi("@keyword", { fg = colors.yellow, bold = true })

hi("@type", { fg = colors.gray })
hi("@type.builtin", { fg = colors.gray })

hi("@attribute", { fg = colors.gray })

hi("@operator", { fg = colors.fg })

hi("@punctuation.delimiter", { fg = colors.gray })
hi("@punctuation.bracket", { fg = colors.fg })
hi("@punctuation.special", { fg = colors.gray })

hi("@character", { fg = colors.green })
hi("@number", { fg = colors.light_gray })
hi("@boolean", { fg = colors.light_gray })

-- UI groups (not Treesitter)
hi("CursorLineNr", { fg = colors.yellow, bold = true })
hi("CursorLine", { bg = colors.bg })

hi("Error", { fg = colors.red })
hi("WarningMsg", { fg = colors.yellow })
hi("VertSplit", { fg = colors.dark_gray })
hi("TelescopeMatching", {
    fg = colors.gray,
    bold = true,
})
