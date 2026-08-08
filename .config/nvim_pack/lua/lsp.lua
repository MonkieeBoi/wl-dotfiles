vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "Format Local buffer" })

local s = vim.diagnostic.severity

vim.diagnostic.config {
    virtual_text = { prefix = "" },
    signs = { text = { [s.ERROR] = "󰅙", [s.WARN] = "", [s.INFO] = "󰋼", [s.HINT] = "󰌵" } },
    underline = true,
    float = { border = "rounded" },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })

vim.lsp.config("jdtls", { settings = { java = { autobuild = { enabled = false } } } })

vim.lsp.config("pylsp", {
    settings = {
        pylsp = {
            flake8 = { enabled = true },
            pydocstpyle = { enabled = true },
            pylint = { enabled = true },
        }
    }
})

vim.lsp.enable({
    "lua_ls", "html", "cssls", "ts_ls", "pylsp",
    "clangd", "texlab", "bashls", "rust_analyzer",
    "sqls", "nixd", "tinymist", "gopls", "jdtls",
})
