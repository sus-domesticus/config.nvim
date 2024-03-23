local slow_format_filetypes = {}
return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				if slow_format_filetypes[vim.bo[bufnr].filetype] then
					return
				end
				local function on_format(err)
					if err and err:match("timeout$") then
						slow_format_filetypes[vim.bo[bufnr].filetype] = true
					end
				end

				return { timeout_ms = 200, lsp_fallback = true }, on_format
			end,

			format_after_save = function(bufnr)
				if not slow_format_filetypes[vim.bo[bufnr].filetype] then
					return
				end
				return { lsp_fallback = true }
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff_format" },
				c = { "clang_format" },
				cpp = { "clang_format" },
			},
		},
	},
}

-- vim: ts=2 sts=2 sw=2 et
