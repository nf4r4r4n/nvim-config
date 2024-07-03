local opt = vim.opt

-- Number
opt.relativenumber = true
opt.number = true

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true

-- Line wrapper
opt.wrap = false

-- Search settins
opt.ignorecase = true

-- Cursor
opt.smartcase = true
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace 
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Folding
opt.foldmethod = "indent"

opt.iskeyword:append("-")
