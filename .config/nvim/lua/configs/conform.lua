local options = {
    lsp_fallback = true,

    formatters_by_ft = {
        lua = { "stylua" },

        javascript = { "deno_fmt" },
        css = { "prettier" },
        html = { "prettier" },

        sh = { "shfmt" },
        c = { "clang_format" },

        nix = { "nixfmt" }
    },

    formatters = {
        deno_fmt = {
            append_args = {"--indent-width", "4"}
        }
    }
}

require("conform").setup(options)
