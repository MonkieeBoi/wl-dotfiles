local overrides = require "configs.overrides"
return {
    {
        "stevearc/conform.nvim",
        config = function()
            require "configs.conform"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "nvchad.configs.lspconfig".defaults()
            require "configs.lspconfig"
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
            prescript = ''
        }
    },

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
        keys = {{ "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "MarkdownPreview toggle"}}
    },

    {
        "sindrets/diffview.nvim",
        keys = {
            { "<leader>do", "<cmd>DiffviewOpen<cr>",  desc = "Diffview open" },
            { "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "Diffview close" },
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
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            arg = "leetcode.nvim",
            lang = "c"
        },
    },

    {
        "SuperBo/fugit2.nvim",
        opts = {
            height = "80%"
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
            "nvim-lua/plenary.nvim",
        },
        cmd = { "Fugit2", "Fugit2Graph" },
        keys = {
            { "gz", "<cmd>Fugit2<cr>" }
        }
    },

    {
        "michaelb/sniprun",
        branch = "master",
        build = "sh install.sh",
        opts = {
            display = {
                "Terminal"
            }
        },
        cmd = { "SnipRun" },
        keys = {
            { "<leader>ss", "<cmd>SnipRun<cr>" }
        }
    },

    {
        "ejrichards/baredot.nvim",
        opts = {
            git_dir = "~/.dotfiles"
        },
        lazy = false
    },

    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        opts = {}
    },

    {
        "numToStr/Comment.nvim",
        enabled = false
    }
}
