vim.g.mapleader = " "

local map = vim.keymap.set

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map("i", "<C-f>", "<C-k>", { desc = "digraph insert" })

map("v", ">", ">gv", { desc = "indent forward" })
map("v", "<", "<gv", { desc = "indent back" })
map("v", "<Tab>", ">gv", { desc = "indent forward" })
map("v", "<S-Tab>", "<gv", { desc = "indent back" })

map("n", "<tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-tab>", "<cmd>bprev<CR>", { desc = "Prev buffer" })

map("n", "<leader>b", "<cmd>enew<CR>", { desc = "Create buffer" })
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete buffer" })

for i = 1, 9 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.fn.getbufinfo({ buflisted = 1 })[i].bufnr)
    end, { desc = "Switch to buffer " .. i })
end

map("n", "<leader>tc", "<cmd>lvim /^#/ % | lw | vert lop<CR>", { desc = "Markdown TOC" })

map("i", "<Tab>",   function() return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"   end, { expr = true })
map("i", "<S-Tab>", function() return vim.fn.pumvisible() == 1 and "<C-p>" or "<S-Tab>" end, { expr = true })
