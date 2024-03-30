return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()

		vim.keymap.set("n", "<leader>tt", function()
			local bufresize = require("bufresize")
			bufresize.register()
			bufresize.block_register()
			if vim.v.count == 0 then
				vim.cmd("ToggleTerm")
			else
				vim.cmd('exe v:count . "ToggleTerm"')
			end
			bufresize.resize()
		end, { desc = "[T]oggle [t]erminal" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
