local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "c",
        "python",
        "markdown",
        "markdown_inline",
        "bibtex",
        "latex",
        "java",
        "bash",
        "typst"
    },
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    }
}

M.mason = {
    ensure_installed = {
        "lua-language-server",
        "stylua",
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "clangd",
        "clang-format",
        "shellcheck",
        "texlab",
        "pylint",
        "python-lsp-server",
        "jdtls",
        "bash-language-server",
        "shfmt",
        "typst-lsp"
    },
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
