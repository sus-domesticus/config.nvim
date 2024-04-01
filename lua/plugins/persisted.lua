return {
	"olimorris/persisted.nvim",
	lazy = false,
	init = function()
		vim.opt.sessionoptions = "buffers,curdir,folds,tabpages,winpos,winsize"
	end,
	config = function()
		require("persisted").setup({})

		vim.keymap.set("n", "<leader>sl", "<cmd>Telescope persisted<cr>", { desc = "[S]ession [l]ens" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
