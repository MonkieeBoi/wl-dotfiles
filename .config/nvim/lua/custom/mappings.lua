---@type MappingsTable
local M = {}

M.general = {
    v = {
        ["<S-Tab>"] = { "<gv", "unindent line" },
        ["<Tab>"] = { ">gv", "indent line" },
    },
    n = {
        ["j"] = { "j", "Move down" },
        ["k"] = { "k", "Move up" },
    },
    x = {
        ["j"] = { "j", "Move down" },
        ["k"] = { "k", "Move up" },
        ["p"] = { "p", "Put" },
    }
}

M.tabufline = {
    n = {
        ["<leader>x"] = { ":bd<CR>", "Delete buffer" },
    },
}

return M
