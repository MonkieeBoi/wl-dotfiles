require("nvchad.configs.lspconfig").defaults()

-- local lspconfig = require "lspconfig"
local servers = {
    "html",
    "cssls",
    "ts_ls",
    "pylsp",
    "clangd",
    "texlab",
    "bashls",
    "rust_analyzer",
    "sqls",
    "nixd",
    "tinymist",
    "tailwindcss",
    "gopls",
    "jdtls",
}

vim.lsp.enable(servers)

 -- for _, lsp in ipairs(servers) do
 --     lspconfig[lsp].setup {
 --         on_attach = on_attach,
 --         on_init = on_init,
 --         capabilities = capabilities,
 --     }
 -- end
vim.lsp.config("jdtls", {
    settings = {
        java = {
            autobuild = {
                enabled = false
            }
        }
    }
})

vim.lsp.config("pylsp", {
    settings = {
        pylsp = {
            flake8 = { enabled = true },
            pydocstpyle = { enabled = true },
            pylint = { enabled = true },
        }
    }
})
