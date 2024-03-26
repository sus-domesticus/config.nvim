return {
	"ggandor/leap.nvim",
	dependencies = { "tpope/vim-repeat" },
	config = function()
		vim.keymap.set({ "n", "v", "o" }, "L", "<Plug>(leap)", { desc = "[L]eap" })
		vim.keymap.set("n", "<leader>L", "<Plug>(leap-from-window)", { desc = "[L]eap from window" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
