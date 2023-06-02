-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Install Packer if not already installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Color schemes
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'

    -- Pairing
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Completion and Snippits
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim builtin LSP client
            "hrsh7th/cmp-nvim-lua", -- nvim-cmp source for nvim lua
            "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words.
            "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths.
            "hrsh7th/cmp-calc", -- nvim-cmp source for math calculation.
            "saadparwaiz1/cmp_luasnip", -- luasnip completion source for nvim-cmp
            "hrsh7th/cmp-cmdline"
        },
        config = function() require("plugin-config/cmp") end
    }

    use {
        "L3MON4D3/LuaSnip",
        requires = {
            "rafamadriz/friendly-snippets" -- collection of assorted snippets
        }
    }

    -- LSP
    use {
        "neovim/nvim-lspconfig", -- enable lsp
        config = function() require("plugin-config/lsp") end
    }

    use {
        "williamboman/mason.nvim", -- simple language server installer
        run = ":MasonUpdate"
    }

    use "williamboman/mason-lspconfig.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function() require("plugin-config/treesitter") end
    }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = {"nvim-lua/plenary.nvim", "BurntSushi/ripgrep"},
        config = function() require("plugin-config/telescope") end
    }

    -- Indentaion Lines
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require("indent_blankline").setup {} end
    }

    -- Commenting
    use {
        "numToStr/Comment.nvim",
        config = function() require("Comment").setup {} end
    }

    -- File tree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {"nvim-tree/nvim-web-devicons"},
        config = function() require("plugin-config/nvim-tree") end
    }

    -- Lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = {"nvim-tree/nvim-web-devicons"},
        config = function() require("plugin-config/lualine") end
    }

    if packer_bootstrap then
        require("packer").sync()
    end
end)
