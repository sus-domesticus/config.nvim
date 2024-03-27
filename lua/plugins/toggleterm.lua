return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()

		vim.keymap.set("n", "<leader>tt", function()
			if vim.v.count == 0 then
				vim.cmd("ToggleTerm")
				return
			end
			vim.cmd('exe v:count . "ToggleTerm"')
		end, { desc = "[T]oggle [t]erminal" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
