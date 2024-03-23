return {
	{
		"jiaoshijie/undotree",
		dependencies = "nvim-lua/plenary.nvim",
		config = true,
		keys = {
			{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", desc = "[U]ndotree" },
		},
	},
}

-- vim: ts=2 sts=2 sw=2 et
