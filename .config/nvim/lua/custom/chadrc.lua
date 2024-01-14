---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
    theme = "nord",
    theme_toggle = { "nord", "nord" },

    hl_override = highlights.override,
    hl_add = highlights.add,

    transparency = true,
    tabufline = {
        overriden_modules = function(modules)
            table.remove(modules, 4)
        end,
    },
    statusline = {
        separator_style = "block",
    },
    cheatsheet = {
        theme = "simple"
    }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
