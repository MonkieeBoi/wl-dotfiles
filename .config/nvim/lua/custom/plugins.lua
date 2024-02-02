local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
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
        'tamton-aquib/keys.nvim',
        lazy = false,
        opts = {
            win_opts = {
                border = "rounded",
                row = 0,
                col = 400,
                title = "keys",
                title_pos = "center",
            }
        }
    },

    {
        'akinsho/flutter-tools.nvim',
        enabled = false,
        event = "BufRead *.dart",
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- 'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        init = function()
            require("flutter-tools").setup{}
        end
    },

    {
        'ThePrimeagen/vim-apm',
        enabled = false,
        keys = {
            {
                '<leader>apm',
                function()
                    require('vim-apm'):toggle_monitor()
                end,
                desc = "Toggle vim apm monitor"
            }
        },
        init = function()
            require('vim-apm'):setup{}
        end
    },

    -- To make a plugin not be loaded
    -- {
    --         "NvChad/nvim-colorizer.lua",
    --         enabled = false
    -- },

    -- All NvChad plugins are lazy-loaded by default
    -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
    -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
    -- {
    --         "mg979/vim-visual-multi",
    --         lazy = false,
    -- }
}

return plugins
