return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		{ "kwkarlwang/bufresize.nvim", config = true },
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "open_current",
			},
			event_handlers = {
				{
					event = "neo_tree_window_before_open",
					handler = function()
						require("bufresize").register()
						require("bufresize").block_register()
					end,
				},
				{
					event = "neo_tree_window_after_open",
					handler = function()
						require("bufresize").resize_open()
					end,
				},
				{
					event = "neo_tree_window_before_close",
					handler = function()
						require("bufresize").register()
						require("bufresize").block_register()
					end,
				},
				{
					event = "neo_tree_window_after_close",
					handler = function()
						require("bufresize").resize_close()
					end,
				},
			},
		})
		vim.keymap.set("n", "<leader>nt", "<cmd>Neotree filesystem reveal right<cr>", { desc = "[N]eo[t]ree" })
		vim.keymap.set(
			"n",
			"<leader>ne",
			"<cmd>Neotree filesystem reveal current %:h:p<cr>",
			{ desc = "[N]eotree [e]xplore" }
		)
	end,
}

-- vim: ts=2 sts=2 sw=2 et
