return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},
	opts = {},
	config = function(opts)
		require("dapui").setup(opts)

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("dap-ui-lsp-attach", { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "DAP: " .. desc })
				end

				map("<leader>B", function()
					require("dapui").toggle()
				end, "toggle UI")

				map("<F10>", function()
					require("dap").step_over()
				end, "step over")

				map("<F11>", function()
					require("dap").step_into()
				end, "step into")

				map("<F12>", function()
					require("dap").step_out()
				end, "step out")

				map("<leader>b", function()
					require("dap").toggle_breakpoint()
				end, "toggle breakpoint")

				map("<F5>", function()
					if vim.bo.filetype == "" then
						print("No dap for empty filetype.")
						return
					end

					local dap = require("dap")

					local success, dapSetup =
						pcall(require, "plugins.helpers.nvim-dap-ui.dap-" .. vim.bo.filetype .. "-setup")
					if success and dapSetup ~= nil and dapSetup.setup ~= nil then
						dapSetup.setup(dap)
					else
						print("You need a dap-" .. vim.bo.filetype .. "-setup.")
						return
					end

					dap.continue()
				end, "continue")
			end,
		})
	end,
}

-- vim: ts=2 sts=2 sw=2 et
