require "nvchad.mappings"

local map = vim.keymap.set

map("i", "<C-c>", "<Esc>")
map("i", "<C-f>", "<C-k>", { desc = "digraph insert" })

map("v", "<Tab>", ">gv", { desc = "indent forward" })
map("v", "<S-Tab>", "<gv", { desc = "indent back" })

map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete buffer" })
map("n", "<leader>gd", "<cmd>Gitsigns toggle_deleted <CR>", { desc = "Gitsigns toggle deleted" })
map("n", "<leader>ls",
    "<cmd>Telescope lsp_document_symbols<CR>",
    { desc = "Telescope Document symbols" }
)

map({ "n", "v" }, "<leader>re", ":ret<CR>", { desc = "retab" })
map({ "n", "v" }, "<leader>ga", "<cmd>Gitsigns stage_hunk<CR>")
map({ "n", "v" }, "<leader>fm", function()
  require("conform").format { async = true, lsp_fallback = true }
end, { desc = "general format file" })

-- Goto tab using A-number
for i = 1, 9, 1 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end)
end

-- TOC for md
map("n", "<leader>tc",
    function ()
        local orig = vim.opt.qftf
        vim.opt.qftf = "v:lua.require'configs.misc'.qftf"
        vim.cmd("lv/^#/%|vert lop|hor winc =|nmap <silent> <buffer> <cr> <cr>:lcl<cr>")
        vim.opt.qftf = orig
    end,
    { desc = "Markdown TOC" }
)

-- Budget persistence.nvim
map("n", "<F2>",
    function ()
        require("configs.misc").save_session()
    end,
    { desc = "Session save" }
)

map("n", "<F3>",
    function ()
        require("configs.misc").restore_session()
    end,
    { desc = "Session restore" }
)
