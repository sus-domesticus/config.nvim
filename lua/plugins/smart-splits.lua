return {
	"mrjones2014/smart-splits.nvim",
	version = ">=1.0.0",
	dependencies = {
		{ "kwkarlwang/bufresize.nvim", config = true },
	},
	config = function()
		require("smart-splits").setup({
			ignored_filetypes = { "neo-tree" },
		})

		local bufresizeSupport = function(op)
			local result = function()
				local bufresize = require("bufresize")
				op()
				bufresize.register()
			end
			return result
		end

		vim.keymap.set(
			{ "n", "t" },
			"<C-Left>",
			bufresizeSupport(require("smart-splits").resize_left),
			{ desc = "Resize left" }
		)
		vim.keymap.set(
			{ "n", "t" },
			"<C-Down>",
			bufresizeSupport(require("smart-splits").resize_down),
			{ desc = "Resize down" }
		)
		vim.keymap.set(
			{ "n", "t" },
			"<C-Up>",
			bufresizeSupport(require("smart-splits").resize_up),
			{ desc = "Resize up" }
		)
		vim.keymap.set(
			{ "n", "t" },
			"<C-Right>",
			bufresizeSupport(require("smart-splits").resize_right),
			{ desc = "Resize right" }
		)

		vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left, { desc = "Move buf left" })
		vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down, { desc = "Move buf down" })
		vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up, { desc = "Move buf up" })
		vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right, { desc = "Move buf right" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
