---@type MappingsTable
local M = {}

M.general = {
  v = {
    ["<S-Tab>"] = {"<gv", "unindent line"},
    ["<Tab>"] = {">gv", "indent line"},
  }
}

-- more keybinds!

return M
