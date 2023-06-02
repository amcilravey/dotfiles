-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    filters = {
        dotfiles = true
    }
})

-- Keymaps
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<cr>")
