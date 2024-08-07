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
            { "T", function() require("kiwi").todo.toggle() end, desc = "Toggle Markdown Task" }
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
        "jakewvincent/mkdnflow.nvim",
        ft = { "markdown" },
        opts = {
            modules = {
                tables   = true,
                lists    = true,
                conceal  = true,
                maps     = true,
                bib      = false,
                buffers  = false,
                cursor   = false,
                folds    = false,
                foldtext = false,
                links    = false,
                paths    = false,
                yaml     = false,
                cmp      = false
            },
            links = {
                conceal = true,
            },
            mappings = {
                MkdnEnter                    = {"i", "<CR>"},
                MkdnTab                      = false,
                MkdnSTab                     = false,
                MkdnNextLink                 = false,
                MkdnPrevLink                 = false,
                MkdnNextHeading              = false,
                MkdnPrevHeading              = false,
                MkdnGoBack                   = false,
                MkdnGoForward                = false,
                MkdnCreateLink               = false,
                MkdnCreateLinkFromClipboard  = false,
                MkdnFollowLink               = false,
                MkdnDestroyLink              = false,
                MkdnTagSpan                  = false,
                MkdnMoveSource               = false,
                MkdnYankAnchorLink           = false,
                MkdnYankFileAnchorLink       = false,
                MkdnFoldSection              = false,
                MkdnUnfoldSection            = false,
            }
        }
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

    {
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        opts = { arg = "leetcode.nvim", lang = "c" },
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
        "NStefan002/screenkey.nvim",
        cmd = "Screenkey",
        lazy = false,
        version = "*",
        opts = {
            win_opts = {
                width = 30,
                border = "rounded",
            }
        },
        keys = {{ "<leader>sk", "<cmd>Screenkey<cr>", desc = "Screenkey toggle" }}
    },

    {
        "folke/ts-comments.nvim",
        opts = {},
        event = "VeryLazy",
    },
}
