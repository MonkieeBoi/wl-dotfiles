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
        ["p"] = { 'p:let @*=@0<CR>:let @"=@0<CR>', "Dont copy replaced text", opts = { silent = true } },

    }
}

M.tabufline = {
    n = {
        ["<leader>x"] = { ":bd<CR>", "Delete buffer" },
    },
}

return M
