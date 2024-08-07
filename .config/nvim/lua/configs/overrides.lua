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
        "rust"
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
        "typst-lsp",
        "rust-analyzer"
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
