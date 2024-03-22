local autocmd = vim.api.nvim_create_autocmd

-- Reset cursor to line on exit
autocmd("VimLeave", {
    pattern = "*",
    command = "set guicursor=n:ver25-blinkon1",
})

-- Hide tabufline if only one buffer 
autocmd({ "BufAdd", "BufEnter", "BufDelete" }, {
    pattern = "*",
    callback = function()
        local new_showtabline = #vim.t.bufs > 1 and 2 or 0
        if new_showtabline ~= vim.opt.showtabline then
            vim.opt.showtabline = new_showtabline
        end
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

-- Auto close when nvim-tree last window
autocmd("QuitPre", {
    callback = function()
        require('nvim-tree.api').tree.close()
    end,
})
