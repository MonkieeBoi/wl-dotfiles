require "nvchad.mappings"

local map = vim.keymap.set

map("i", "<C-c>", "<Esc>")
map("i", "<C-f>", "<C-k>", { desc = "digraph insert" })

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

-- Budget persistence.nvim
local function get_session()
    local dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/")
    local path = dir .. vim.fn.getcwd():gsub("/", "%%") .. ".vim"
    return vim.fn.fnameescape(path)
end

map("n", "<F2>",
    function ()
        vim.ui.input({ prompt = "Save session? " },
            function (input)
                if input == "y" then
                    vim.cmd("mks! " .. get_session())
                    print("Saved session")
                else
                    print(" ")
                end
            end
        )
    end,
    { desc = "Session save" }
)

map("n", "<F3>",
    function ()
        local path = get_session()
        if path and vim.fn.filereadable(path) ~= 1 then
            vim.cmd("so " .. path)
            print("Restored session")
        else
            print("No session to restore")
        end
    end,
    { desc = "Session restore" }
)
