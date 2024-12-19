---@type ChadrcConfig
local M = {}
local highlights = require "highlights"

M.ui = {
    tabufline = {
        order = { "treeOffset", "buffers", "tabs" }
    },
    statusline = {
        separator_style = "block",
    },
}

M.base46 = {
    theme = "nord",
    theme_toggle = { "nord", "nord" },

    hl_override = highlights.override,
    hl_add = highlights.add,

    transparency = true,
    integrations = { "neogit" },
}

M.colorify = {
    mode = "fg"
}

return M
