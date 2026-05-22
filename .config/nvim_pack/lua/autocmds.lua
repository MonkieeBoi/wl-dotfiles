local autocmd = vim.api.nvim_create_autocmd

-- Reset cursor to line on exit
autocmd("VimLeave", {
    pattern = "*",
    command = "set guicursor=n:ver25-blinkon1",
})

-- Hide tabline when only one buffer
autocmd({ "BufAdd", "BufEnter", "BufDelete" }, {
    pattern = "*",
    callback = function()
        vim.schedule(function()
            local n = #vim.fn.getbufinfo({ buflisted = 1 }) > 1 and 2 or 0
            if n ~= vim.o.showtabline then vim.o.showtabline = n end
        end)
    end,
})

-- Foot IME things
autocmd("InsertEnter", {
    pattern = "*",
    command = "call chansend(v:stderr, \"\\e[?737769h\")",
})

autocmd("InsertLeave", {
    pattern = "*",
    command = "call chansend(v:stderr, \"\\e[?737769l\")",
})

-- Markdown lists
autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.formatoptions:append("r")
        vim.opt_local.formatoptions:append("o")
        vim.opt_local.comments = {
            "b:- [ ]",
            "b:- [x]",
            "b:*",
            "b:-",
            "b:+",
        }
    end,
})

-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Transparent background
autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        local groups = { "Normal", "NormalNC", "SignColumn" }
        for _, group in ipairs(groups) do
            vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
        end
    end,
})
