return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		opts = {},
		config = function(opts)
			require("dapui").setup(opts)

			local wk = require("which-key")
			wk.register({
				["<Leader>B"] = {
					function()
						require("dapui").toggle()
					end,
					"dap toggle UI",
				},
				["<F5>"] = {
					function()
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
					end,
					"dap continue",
				},
				["<F10>"] = {
					function()
						require("dap").step_over()
					end,
					"dap step over",
				},
				["<F11>"] = {
					function()
						require("dap").step_into()
					end,
					"dap step into",
				},
				["<F12>"] = {
					function()
						require("dap").step_out()
					end,
					"dap step out",
				},
				["<Leader>b"] = {
					function()
						require("dap").toggle_breakpoint()
					end,
					"dap toggle breakpoint",
				},
			})
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
