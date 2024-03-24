require("lazy").setup({
	"tpope/vim-fugitive",
	"tpope/vim-sleuth",
	"nvim-treesitter/nvim-treesitter-context",
	{ "numToStr/Comment.nvim", opts = {} },
	require("plugins/neo-tree"),
	require("plugins/suda"),
	require("plugins/nvim-lint"),
	require("plugins/vim-tmux-navigator"),
	require("plugins/undotree"),
	require("plugins/nvim-dap-ui"),
	require("plugins/leap"),
	require("plugins.flit"),
	require("plugins/gitsigns"),
	require("plugins/which-key"),
	require("plugins/telescope"),
	require("plugins/lspconfig"),
	require("plugins/conform"),
	require("plugins/cmp"),
	require("plugins/tokyonight"),
	require("plugins/todo-comments"),
	require("plugins/mini"),
	require("plugins/treesitter"),
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
