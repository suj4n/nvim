local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
local plugins = {

    --essentials
    --esssentials
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

    {
        'nvim-telescope/telescope.nvim', 
        version = "0.1.5",
        dependencies = { 'nvim-lua/plenary.nvim'}
    },

    --ui related
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },

    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

    'nvim-tree/nvim-tree.lua',
    {
        'stevearc/dressing.nvim',
        opts = {},
    },
    
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-telescope/telescope-ui-select.nvim',

    --LSP Support
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {"hrsh7th/nvim-cmp"}, -- completion plugin
    {"hrsh7th/cmp-buffer"}, -- source for text in buffer
    {"hrsh7th/cmp-path"}, -- source for file system paths    
    --snippets
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {"saadparwaiz1/cmp_luasnip"}, -- for autocompletion
    {"rafamadriz/friendly-snippets"}, -- useful snippets

    'github/copilot.vim',

    --goodiess

    "nvim-lua/plenary.nvim", -- don't forget to add this one if you don't have it yet!
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { {"nvim-lua/plenary.nvim"} },
    },
    "windwp/nvim-autopairs",

    'folke/twilight.nvim',
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            -- configurations go here
        },
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    --{
        --'lucastavaresa/simpleIndentGuides.nvim',
        --config = function()
            --vim.opt.list = true -- enable in all buffersrequire
            --require("simpleIndentGuides").setup()
            --end
            --},

            "lukas-reineke/indent-blankline.nvim",

            "xiyaowong/transparent.nvim",

            --colorschemes
            "EdenEast/nightfox.nvim",
            "rebelot/kanagawa.nvim",
            { 'cryptomilk/nightcity.nvim', version = '*' },
            {
                "folke/tokyonight.nvim",
                lazy = false,
                priority = 1000,
                opts = {},
            },
            'RRethy/nvim-base16',
            {
                "xero/miasma.nvim",
                lazy = false,
                priority = 1000,
                config = function()
                    vim.cmd("colorscheme miasma")
                end,
            },
        }


        require("lazy").setup(plugins, opts )

