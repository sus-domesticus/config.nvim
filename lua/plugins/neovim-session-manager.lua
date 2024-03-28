return {
	"Shatur/neovim-session-manager",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = function()
		vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	config = function()
		require("session_manager").setup({})
		vim.keymap.set(
			"n",
			"<leader>sl",
			"<cmd>SessionManager load_session<cr>",
			{ desc = "Search in [s]ession [l]ens" }
		)
	end,
}
-- vim: ts=2 sts=2 sw=2 et
