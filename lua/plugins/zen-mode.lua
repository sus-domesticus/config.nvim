return {
	"folke/zen-mode.nvim",
	config = function()
		require("zen-mode").setup({})
		vim.keymap.set("n", "<leader>oz", "<cmd>ZenMode<cr>", { desc = "[Z]en mode" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
