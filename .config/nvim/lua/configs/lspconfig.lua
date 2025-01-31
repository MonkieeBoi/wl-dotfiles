local nv_on_attach = require("nvchad.configs.lspconfig").on_attach
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
    "nixd",
    "tinymist",
    "tailwindcss",
    "gopls",
}

-- on_attach wrapper to delete <leader>ca mapping
local on_attach = function(client, bufnr)
    nv_on_attach(client, bufnr)
    vim.keymap.del({ "n", "v" }, "<leader>ca", { buffer = bufnr })
end

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
