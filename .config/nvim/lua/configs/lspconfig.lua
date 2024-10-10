local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    "html",
    "cssls",
    "ts_ls",
    "clangd",
    "pylsp",
    "texlab",
    "bashls",
    "rust_analyzer",
    "sqls",
    "nil_ls"
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    }
end

lspconfig.typst_lsp.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        exportPdf = "never"
    }
}

lspconfig.jdtls.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        java = {
            autobuild = {
                enabled = false
            }
        }
    }
}
