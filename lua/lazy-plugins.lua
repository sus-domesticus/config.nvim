require("lazy").setup({
	"tpope/vim-sleuth",
	"nvim-treesitter/nvim-treesitter-context",
	{ "numToStr/Comment.nvim", opts = {} },
	"famiu/bufdelete.nvim",
	{ "jokajak/keyseer.nvim", version = "*", opts = {} },
	require("plugins.lualine"),
	require("plugins.lazygit"),
	require("plugins.smart-splits"),
	require("plugins.neovim-session-manager"),
	require("plugins.grapple"),
	require("plugins.dressing"),
	require("plugins.toggleterm"),
	require("plugins.ufo"),
	require("plugins.window-picker"),
	require("plugins.neo-tree"),
	require("plugins.suda"),
	require("plugins.nvim-lint"),
	require("plugins.vim-tmux-navigator"),
	require("plugins.undotree"),
	require("plugins.nvim-dap-ui"),
	require("plugins.leap"),
	require("plugins.flit"),
	require("plugins.gitsigns"),
	require("plugins.which-key"),
	require("plugins.telescope"),
	require("plugins.lspconfig"),
	require("plugins.conform"),
	require("plugins.cmp"),
	require("plugins.tokyonight"),
	require("plugins.todo-comments"),
	require("plugins.mini"),
	require("plugins.treesitter"),
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
