-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
    Comment = {
        italic = true,
    },
    ["@markup.link.label"] = { fg = "NONE", underline = true },
    ["@markup.heading"] = { fg = "blue", bold = true },
}

---@type HLTable
M.add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
    RenderMarkdownH1Bg = { fg = "cyan", bold = true },
    RenderMarkdownH2Bg = { fg = "blue", bold = true },
    RenderMarkdownH3Bg = { fg = "purple", bold = true },
    RenderMarkdownH4Bg = { fg = "green", bold = true },
    RenderMarkdownH5Bg = { fg = "sun", bold = true },
    RenderMarkdownH6Bg = { fg = "white", bold = true },
}

return M
