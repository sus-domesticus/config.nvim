return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		init = function()
			vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })

			vim.cmd.colorscheme("kanagawa")
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
