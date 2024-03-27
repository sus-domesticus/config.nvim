return {
	"rmagatti/auto-session",
	dependencies = { "nvim-telescope/telescope.nvim" },
	init = function()
		vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	opts = {
		log_level = "error",
		auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
		session_lens = {
			buftypes_to_ignore = {},
			load_on_setup = true,
			theme_conf = { border = true },
			previewer = false,
		},
	},
	config = function(opts)
		require("auto-session").setup(opts)
		vim.keymap.set(
			"n",
			"<leader>sl",
			require("auto-session.session-lens").search_session,
			{ desc = "[S]earch session [l]ens" }
		)
	end,
}

-- vim: ts=2 sts=2 sw=2 et
