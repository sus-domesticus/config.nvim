return {
	"karb94/neoscroll.nvim",
	opts = {
		post_hook = function()
			vim.api.nvim_input("zvzz")
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
