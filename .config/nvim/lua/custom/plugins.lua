local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },

    {
        "stevearc/conform.nvim",
        config = function()
            require "custom.configs.conform"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    {
        "vimwiki/vimwiki",
        ft = "markdown",
        keys = { "<leader>ww" },
        init = function()
            vim.g.vimwiki_list = {
                {
                    path = "~/Documents/vimwiki/",
                    syntax = "markdown",
                    ext = ".md",
                },
            }
        end,
    },

    {
        "NFrid/due.nvim",
        event = "BufRead *.md",
        opts = {
            use_clock_time = true,
            use_seconds = false,
        }
    },

    {
        "iamcco/markdown-preview.nvim",
        ft = { "markdown" },
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },

    {
        "sindrets/diffview.nvim",
        keys = {
            { "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "Open diffview" },
            { "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
        }
    },

    {
        "jxm35/livecode.nvim",
        cmd = { "LCStartSession", "LCJoin" },
        opts = {}
    },

    {
        "NvChad/nvim-colorizer.lua",
        opts = {
            user_default_options = {
                names = false,
                css = true,
            }
        }
    },

    {
        "akinsho/flutter-tools.nvim",
        enabled = false,
        event = "BufRead *.dart",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- "stevearc/dressing.nvim", -- optional for vim.ui.select
        },
        init = function()
            require("flutter-tools").setup{}
        end
    },

    {
        "ThePrimeagen/vim-apm",
        enabled = false,
        keys = {
            {
                "<leader>apm",
                function()
                    require("vim-apm"):toggle_monitor()
                end,
                desc = "Toggle vim apm monitor"
            }
        },
        init = function()
            require("vim-apm"):setup{}
        end
    },
}

return plugins
