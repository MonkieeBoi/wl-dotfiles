---@type ChadrcConfig
local M = {}
local highlights = require "highlights"

M.ui = {
    theme = "nord",
    theme_toggle = { "nord", "nord" },

    hl_override = highlights.override,
    hl_add = highlights.add,

    transparency = true,
    tabufline = {
        order = { "treeOffset", "buffers", "tabs" }
    },
    statusline = {
        separator_style = "block",
    },
}

return M
