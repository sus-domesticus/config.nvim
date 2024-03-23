return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			python = { "ruff" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			group = vim.api.nvim_create_augroup("lint-buf-write-post", { clear = true }),
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}

-- vim: ts=2 sts=2 sw=2 et
