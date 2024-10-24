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
        enabled = false,
        opts = overrides.nvimtree,
    },

    {
        "luukvbaal/nnn.nvim",
        cmd = { "NnnExplorer", "NnnPicker" },
        opts = {
            explorer = {
                width = 30
            },
            auto_close = true,
            quitcd = "cd"
        }
    },

    -- {
    --     "vimwiki/vimwiki",
    --     ft = "markdown",
    --     keys = { "<leader>ww" },
    --     init = function()
    --         vim.g.vimwiki_list = {
    --             {
    --                 path = "~/Documents/Wiki/",
    --                 syntax = "markdown",
    --                 ext = ".md",
    --             },
    --         }
    --     end,
    -- },

    {
        "serenevoid/kiwi.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        opts = {
            {
                name = "notes",
                path = os.getenv("HOME") .. "/Documents/Wiki"
            },
        },
        keys = {
            { "<leader>ww", function() require("kiwi").open_wiki_index() end, desc = "Open Wiki index" },
            { "<C-Space>", function() require("kiwi").todo.toggle() end, desc = "Toggle Markdown Task" }
        },
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
        "SCJangra/table-nvim",
        ft = "markdown",
        opts = {},
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown" },
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            render_modes = { 'n', 'c', 'i'},
            heading = {
                icons = { "󰼏 ", "󰎨 ", "󰼑 ", "󰎲 ", "󰼓 ", "󰎴 " },
            },
            bullet = {
                icons = { '', '○', '◆', '◇' },
            },
            pipe_table = {
                border = {
                    "╭", "┬", "╮",
                    "├", "┼", "┤",
                    "╰", "┴", "╯",
                    "│", "─"
                }
            }
        }
    },

    {
        "sindrets/diffview.nvim",
        keys = {{ "<leader>dv", "<cmd>DiffviewOpen<cr>",  desc = "Diffview open" }}
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

    -- {
    --     "SuperBo/fugit2.nvim",
    --     opts = { height = "80%" },
    --     dependencies = {
    --         "MunifTanjim/nui.nvim",
    --         "nvim-tree/nvim-web-devicons",
    --         "nvim-lua/plenary.nvim",
    --     },
    --     cmd = { "Fugit2", "Fugit2Graph" },
    --     keys = {{ "gz", "<cmd>Fugit2<cr>" }}
    -- },

    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true,
        keys = {{ "gz", function() require("neogit").open({ kind = "auto"}) end }}
    },

    {
        "ejrichards/baredot.nvim",
        opts = { git_dir = "~/.dotfiles" },
        lazy = false
    },

    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        opts = {}
    },

    {
        "nvchad/showkeys",
        cmd = "ShowkeysToggle",
        opts = {
            maxkeys = 5,
            show_count = true
        },
        keys = {{ "<leader>sk", "<cmd>ShowkeysToggle<cr>", desc = "Showkeys toggle" }}
    },

    {
        "folke/ts-comments.nvim",
        opts = {},
        event = "VeryLazy",
    },

    {
        "hat0uma/csvview.nvim",
        cmd = "CsvViewToggle",
        opts = {
            view = {
                spacing = 0
            }
        }
    },

    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        opts = {
            use_default_keymaps = false,
            max_join_length = 200
        },
        keys = {
            {
                "<leader>sj",
                function()
                    require('treesj').toggle({ split = { recursive = true } })
                end,
                desc = "Treesj toggle",
            },
        },
    },
}
