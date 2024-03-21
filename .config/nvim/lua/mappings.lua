require "nvchad.mappings"

local map = vim.keymap.set

map("v", "<Tab>", ">gv", { desc = "indent line" })
map("v", "<S-Tab>", "<gv", { desc = "unindent line" })
map("v", "<C-j>",
    ":m '>+<C-r>=max([1,v:count])<CR><CR>gv=gv",
    { desc = "Move selection down", silent = true }
)
map("v", "<C-k>",
    ":md>m '<-<C-r>=max([2,1+v:count])<CR><CR>gv=gv",
    { desc = "Move selection up", silent = true }
)

map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete buffer" })
map("n", "<leader>fc",
    function()
        require("conform").format()
    end,
    { desc = "format with conform" }
)
