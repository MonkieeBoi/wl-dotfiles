local options = {
    lsp_fallback = true,

    formatters_by_ft = {
        lua = { "stylua" },

        javascript = { "deno_fmt" },
        css = { "prettier" },
        html = { "prettier" },

        sh = { "shfmt" },
        c = { "clang_format" }
    },
}

require("conform").setup(options)
