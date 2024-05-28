require "nvchad.options"

local opt = vim.opt
local g = vim.g

opt.clipboard = "unnamed"
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.relativenumber = true
opt.mouse = ""
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.conceallevel = 2
opt.dictionary = "/usr/share/dict/british"
opt.list = true
opt.listchars:append({ trail = "•" })

-- disable opening folds with h/l
opt.foldopen:remove "hor"

-- don't go to previous/next line with h,l,left arrow and right arrow
opt.whichwrap:remove "<>[]hl"
