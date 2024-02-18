---@type MappingsTable
local M = {}

M.general = {
    v = {
        ["<S-Tab>"] = { "<gv", "unindent line" },
        ["<Tab>"] = { ">gv", "indent line" },
        ["<C-j>"] = { ":m '>+<C-r>=max([1,v:count])<CR><CR>gv=gv", "Move selection down", opts = { silent = true } },
        ["<C-k>"] = { ":m '<-<C-r>=max([2,1+v:count])<CR><CR>gv=gv", "Move selection up", opts = { silent = true } },
    },
    n = {
        ["j"] = { "j", "Move down" },
        ["k"] = { "k", "Move up" },
        ["<leader>fc"] = {
            function()
                require("conform").format({ lsp_fallback = true })
            end,
            "formatting",
        }
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
