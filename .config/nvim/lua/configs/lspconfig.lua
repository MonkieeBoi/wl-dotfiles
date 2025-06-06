local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    "html",
    "cssls",
    "ts_ls",
    "clangd",
    "texlab",
    "bashls",
    "rust_analyzer",
    "sqls",
    "nixd",
    "tinymist",
    "tailwindcss",
    "gopls",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    }
end

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

lspconfig.pylsp.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        pylsp = {
            flake8 = { enabled = true },
            pydocstpyle = { enabled = true },
            pylint = { enabled = true },
        }
    }
}
