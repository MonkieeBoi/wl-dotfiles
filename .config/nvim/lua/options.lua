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
opt.dictionary = "/usr/share/dict/british"

-- disable opening folds with h/l
opt.foldopen:remove "hor"
