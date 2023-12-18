local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- format & linting
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },

    -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    {
        "vimwiki/vimwiki",
        event = "BufRead *.md",
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
        config = function()
            require("due_nvim").setup {
                use_clock_time = true,
                use_seconds = false,
            }
        end,
    },

    {
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        build = "cd app && npm install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
    },

    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- 'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        init = function()
            require("flutter-tools").setup{}
        end
    }
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
