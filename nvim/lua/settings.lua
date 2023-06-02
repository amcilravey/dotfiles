local set = vim.opt
local cmd = vim.cmd

-- Appearance
set.termguicolors = true
set.wrap = false
set.number = true
set.relativenumber = true
set.cursorline = true   -- enable cursorline and change it to an underline
cmd("hi clear Cursorline")
cmd("hi CursorLine gui=underline cterm=underline")
cmd("syntax on")
cmd("colorscheme tokyonight")

-- Indentation
require("indentation")

-- Search
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- Mouse
set.mouse = "a"

-- Command Prompt
-- set.wildmode = longest, list

-- Splits
set.splitright = true
set.splitbelow = true

-- Other
set.undofile = true
set.hidden = true
set.updatetime = 300
