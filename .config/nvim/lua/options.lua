require "nvchad.options"

local opt = vim.opt
local o = vim.o
local g = vim.g

o.clipboard = "unnamed"
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.relativenumber = true
o.mouse = ""
o.foldmethod = "expr"
o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldlevelstart = 99
-- o.conceallevel = 2
o.dictionary = vim.env.WORDLIST or "/usr/share/dict/british"
o.list = true
opt.listchars:append({ trail = "•" })

-- disable opening folds with h/l
opt.foldopen:remove "hor"

-- don't go to previous/next line with h,l,left arrow and right arrow
opt.whichwrap:remove "<>[]hl"

-- snipmate snippets
g.snipmate_snippets_path = vim.fn.stdpath "config" .. "/snippets/snipmate"
