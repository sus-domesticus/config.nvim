return {
    {
        "numToStr/Comment.nvim",
        opts = {

        },
        lazy = false,
        config = function()
            require("Comment").setup {}
        end
    },
    {
        "ggandor/flit.nvim",
        dependencies = { "ggandor/leap.nvim" },
        config = function()
            require('flit').setup {
                keys = { f = 'f', F = 'F', t = 't', T = 'T' },
                multiline = true
            }
        end
    },
    {
        "folke/neodev.nvim",
        opts = {}
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("susdomesticus.plugin_configs.trouble").setup {}
        end,
        opts = {}
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
            vim.g.mkdp_auto_start = 1
            vim.g.mkdp_auto_stop = 1
            vim.g.mkdp_browser = "/usr/bin/brave-browser-stable"
        end,
        ft = { "markdown" },
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
    },
    {
        "williamboman/mason.nvim",
    },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            require("susdomesticus.plugin_configs.vim-fugitive").setup {}
        end
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        }
    },
    {

        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies =
        {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzf-native.nvim"
        },
        config = function()
            require("susdomesticus.plugin_configs.telescope").setup {}
        end
    },
    {
        "folke/which-key.nvim",
        config = function()
            require("susdomesticus.plugin_configs.which-key").setup {}
        end
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd("colorscheme tokyonight-moon")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("susdomesticus.plugin_configs.nvim-treesitter").setup {}
        end
    },
    {
        "mbbill/undotree",
        config = function()
            require("susdomesticus.plugin_configs.undotree").setup {}
        end
    },
    {
        "ggandor/leap.nvim",
        dependencies = { "tpope/vim-repeat" },
        config = function()
            require("susdomesticus.plugin_configs.leap").setup {}
        end
    },
    {
        "lambdalisue/suda.vim",
        init = function()
            vim.g.suda_smart_edit = 1
        end
    }
}
