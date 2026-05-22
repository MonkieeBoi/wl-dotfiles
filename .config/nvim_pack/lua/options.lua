local opt = vim.opt
local o = vim.o
local g = vim.g

opt.nu = true
opt.rnu = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- opt.wrap = false
opt.smartindent = true
opt.inccommand = "split"

opt.splitbelow = true
opt.splitright = true

opt.ignorecase = true
opt.smartcase = true
opt.laststatus = 3

opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath("data") .. "/undodir"
opt.undofile = true

opt.completeopt = "menuone,noselect,fuzzy,nosort"
opt.shortmess:append("c")
opt.isfname:append("@-@")

opt.signcolumn = "yes"

o.cursorline = true
o.cursorlineopt = "number"

opt.fillchars = { eob = " " }
opt.listchars:append({ trail = "•" })

opt.shortmess:append "sI"

o.mouse = ""
o.dictionary = vim.env.WORDLIST

-- add binaries installed by mason.nvim to path
-- local is_windows = vim.fn.has "win32" ~= 0
-- local sep = is_windows and "\\" or "/"
-- local delim = is_windows and ";" or ":"
-- vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, sep) .. delim .. vim.env.PATH

