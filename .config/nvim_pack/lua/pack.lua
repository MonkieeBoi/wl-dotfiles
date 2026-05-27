vim.pack.add({
    "https://github.com/nvim-mini/mini.nvim",
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/neovim/nvim-lspconfig",
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
    "https://github.com/kdheepak/lazygit.nvim",
    "https://github.com/ejrichards/baredot.nvim",
    "https://github.com/shaunsingh/nord.nvim",
    "https://github.com/kylechui/nvim-surround",
})

vim.g.nord_italic = false
vim.g.nord_bold = false
vim.cmd.colorscheme("nord")

vim.keymap.set("n", "gz", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })

require("mini.tabline").setup()
require("mini.icons").setup()
require("mini.pairs").setup()
require("mini.git").setup()
require("nvim-surround").setup()

require("baredot").setup({ git_dir = "~/.dotfiles" })

require("mini.cmdline").setup({
    autocorrect = { enable = false },
})

require("mini.indentscope").setup({
    draw = {
        delay = 10
    }
})

require('mini.statusline').section_lsp = function()
    local blacklist = { ["mini.snippets"] = true }
    local all_clients = vim.lsp.get_clients({ bufnr = 0 })
    local clients = vim.tbl_filter(function(c) return not blacklist[c.name] end, all_clients)
    return #clients > 0 and table.concat(vim.tbl_map(function(c) return c.name end, clients), ", ") or ""
end

require("mini.statusline").setup()

local MiniDiff = require("mini.diff")
MiniDiff.setup({
    view = {
        style = 'sign',
        signs = { add = '│', change = '│', delete = '󰍵' }
    }
})

vim.keymap.set("n", "<Leader>gd", function() MiniDiff.toggle_overlay() end, { desc = "Open LazyGit" })

local MiniFiles = require("mini.files")
MiniFiles.setup({
    mappings = {
        go_in_plus = "<CR>",
    },
})

vim.keymap.set("n", "<C-n>", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })

local MiniPick = require("mini.pick")
local MiniExtra = require("mini.extra")
MiniPick.setup()
MiniExtra.setup()

vim.keymap.set("n", "<leader>ff", function() MiniPick.builtin.files() end, { desc = "Mini File Picker" })
vim.keymap.set("n", "<leader>fw", function() MiniPick.builtin.grep({ pattern = "" }) end,
    { desc = "Grep word/Search word" })
vim.keymap.set("n", "<leader>fh", function() MiniPick.builtin.help() end, { desc = "Mini Help" })
vim.keymap.set("n", "<leader>fk", function() MiniExtra.pickers.keymaps() end, { desc = 'Search keymaps' })

require("mini.completion").setup({
    lsp_completion = {
        auto_setup = true,
    }
})

local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
    snippets = {
        MiniSnippets.gen_loader.from_lang(),
    },
    mappings = {
        expand = "",
        stop = "<Esc>"
    }
})
MiniSnippets.start_lsp_server({ match = false })
