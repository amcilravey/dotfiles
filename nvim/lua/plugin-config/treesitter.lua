local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = "all",
    auto_install = true,
    highlight = {
        enable = true
    },
    indent = {
        enable = true,
        additional_vim_regex_highlighting = true
    }
})

