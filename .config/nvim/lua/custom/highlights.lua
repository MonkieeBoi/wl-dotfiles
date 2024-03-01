-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
    Comment = {
        italic = true,
    },
}

---@type HLTable
M.add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
    ["@text.title.1.markdown"] = { fg = "blue" },
    ["@text.title.2.markdown"] = { fg = "blue" },
    ["@text.title.3.markdown"] = { fg = "blue" },
    ["@text.title.4.markdown"] = { fg = "blue" },
    ["@text.title.5.markdown"] = { fg = "blue" },
    ["@text.title.6.markdown"] = { fg = "blue" },
    ["@text.title.1.marker.markdown"] = { fg = "NONE" },
    ["@text.title.2.marker.markdown"] = { fg = "NONE" },
    ["@text.title.3.marker.markdown"] = { fg = "NONE" },
    ["@text.title.4.marker.markdown"] = { fg = "NONE" },
    ["@text.title.5.marker.markdown"] = { fg = "NONE" },
    ["@text.title.6.marker.markdown"] = { fg = "NONE" },
    ["@text.literal.block.markdown"] = { fg = "NONE" },
}

return M
