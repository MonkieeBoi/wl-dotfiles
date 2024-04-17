require "nvchad.mappings"

vim.keymap.del("t", "<Esc>")

local map = vim.keymap.set

map("i", "<C-c>", "<Esc>")

map("v", "<Tab>", ">gv", { desc = "indent line" })
map("v", "<S-Tab>", "<gv", { desc = "unindent line" })

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
