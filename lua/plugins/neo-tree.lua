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
		vim.keymap.set("n", "<leader>t", "<cmd>Neotree filesystem reveal right<cr>", { desc = "Neo[t]ree" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
