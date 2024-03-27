return {
	"cbochs/grapple.nvim",
	opts = {
		scope = "git",
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	keys = {
		{ "<leader>m", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
		{ "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
	},
}

-- vim: ts=2 sts=2 sw=2 et
