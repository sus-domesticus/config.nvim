return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "open_current",
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
