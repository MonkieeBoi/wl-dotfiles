require "nvchad.mappings"

vim.keymap.del("t", "<Esc>")

local map = vim.keymap.set

map("i", "<C-c>", "<Esc>")
map("i", "<C-m>", "<C-k>", { desc = "digraph insert" })

map("v", "<Tab>", ">gv", { desc = "indent forward" })
map("v", "<S-Tab>", "<gv", { desc = "indent back" })

map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete buffer" })
map("n", "<leader>ga", "<cmd>Gitsigns stage_hunk<CR>")
map("n", "<leader>fc",
    function()
        require("conform").format()
    end,
    { desc = "format with conform" }
)

-- Goto tab using A-number
for i = 1, 9, 1 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end)
end
