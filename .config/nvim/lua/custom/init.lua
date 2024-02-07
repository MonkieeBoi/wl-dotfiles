local opt = vim.opt
local g = vim.g
local autocmd = vim.api.nvim_create_autocmd

-------------------------------------- options ------------------------------------------

g.snipmate_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"

opt.clipboard = "unnamed"
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.relativenumber = true
opt.mouse = ""
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.dictionary = "/usr/share/dict/british"

-- disable opening folds with h/l
opt.foldopen:remove "hor"

-- enable nvim intro
opt.shortmess:remove "I"

-- don't go to previous/next line with h,l,left arrow and right arrow
opt.whichwrap:remove "<>[]hl"

-------------------------------------- autocmds ------------------------------------------

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

-- Goto tab using A-number
for i = 1, 9, 1 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end)
end

-- Auto close when nvim-tree last window
vim.api.nvim_create_autocmd("QuitPre", {
    callback = function()
        require('nvim-tree.api').tree.close()
    end,
})
