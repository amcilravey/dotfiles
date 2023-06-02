local map = vim.keymap

vim.g.mapleader = " "

-- Window navigation
map.set("n", "<leader>wv", "<C-w>v")
map.set("n", "<leader>ws", "<C-w>s")
map.set("n", "<leader>we", "<C-w>=")
map.set("n", "<leader>wc", "<C-w>c")
map.set("n", "<C-h>", "<C-w>h")
map.set("n", "<C-j>", "<C-w>j")
map.set("n", "<C-k>", "<C-w>k")
map.set("n", "<C-l>", "<C-w>l")

-- Buffers
map.set("n", "<leader>bb", ":ls<cr>")
map.set("n", "<leader>bd", ":bd<cr>")
map.set("n", "<leader>bn", ":bnext<cr>")
map.set("n", "<leader>bp", ":bprevious<cr>")

-- Copy/Paste
map.set("n", "<leader>y", "\"+y")
map.set("v", "<leader>y", "\"+y")
map.set("n", "<leader>p", "\"+p")
map.set("v", "<leader>p", "\"+p")
