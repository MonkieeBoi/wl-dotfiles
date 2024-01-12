local opt = vim.opt
local g = vim.g
local autocmd = vim.api.nvim_create_autocmd

-------------------------------------- options ------------------------------------------

opt.clipboard = "unnamed"
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.relativenumber = true
opt.mouse = ""

-- disable opening folds with h/l
opt.foldopen:remove "hor"

-- enable nvim intro
opt.shortmess:remove "I"

-- don't go to previous/next line with h,l,left arrow and right arrow
opt.whichwrap:remove "<>[]hl"

-- for dictionary autocompletion
opt.dictionary = "/usr/share/dict/british"

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

-- Start keys.nvim because enable_on_startup won't work
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("keys").toggle()
	end,
})
