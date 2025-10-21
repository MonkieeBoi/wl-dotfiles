local M = {}

M.treesitter = {
    ensure_installed = {
        "html",
        "css",
        "javascript",
        "bibtex",
        "latex",
        "java",
        "typst",
        "rust",
        "go"
    },
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    }
}

M.mason = {
    PATH = "append",
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
