return {
	{
		"ggandor/leap.nvim",
		dependencies = { "tpope/vim-repeat" },
		config = function()
			local wk = require("which-key")
			wk.register({ ["L"] = { "<Plug>(leap)", "[L]eap" } })
			wk.register({ ["L"] = { "<Plug>(leap)", "[L]eap" } }, { mode = "v" })
			wk.register({ ["L"] = { "<Plug>(leap)", "[L]eap" } }, { mode = "o" })
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
