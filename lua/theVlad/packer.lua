-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use("nvim-tree/nvim-web-devicons")

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- colorscheme & theme
    use("folke/tokyonight.nvim")

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use("p00f/nvim-ts-rainbow")
    use('theprimeagen/harpoon')
    use('windwp/nvim-autopairs')
    use('mbbill/undotree')

    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use('nvim-lua/plenary.nvim')
    use('jose-elias-alvarez/null-ls.nvim')

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    --use ("nvim-tree/nvim-tree.lua")

    use {
        "mfussenegger/nvim-dap",
        opt = true,
        module = { "dap" },
        requires = {
            "theHamsta/nvim-dap-virtual-text",
            "rcarriga/nvim-dap-ui",
            "nvim-telescope/telescope-dap.nvim",
            "mfussenegger/nvim-dap-python",
            "jbyuki/one-small-step-for-vimkind",
            module = "osv",
            { "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } },
            {
                "microsoft/vscode-js-debug",
                opt = true,
                run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
            },
        },
    }

    -- god pope
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-commentary' }

    -- Database
    use {
        "tpope/vim-dadbod",
        opt = true,
        module = { "dadbod" },
        requires = {
            "kristijanhusak/vim-dadbod-ui",
            "kristijanhusak/vim-dadbod-completion",
        },
        cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
end)
