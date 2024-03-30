local function find_open()
	local wins = {}
	for _, win in pairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].filetype == "toggleterm" then
			table.insert(wins, win)
		end
	end
	return wins
end

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({})

		vim.keymap.set("n", "<leader>tt", function()
			local bufresize = require("bufresize")
			bufresize.register()
			bufresize.block_register()

			local before = find_open()

			if vim.v.count == 0 then
				vim.cmd("ToggleTerm size=20")
			else
				vim.cmd('exe v:count . "ToggleTerm size=20"')
			end

			local something_closed = false
			for _, win in pairs(before) do
				if not vim.api.nvim_win_is_valid(win) then
					something_closed = true
					break
				end
			end

			if something_closed then
				bufresize.resize_close()
			elseif #find_open() > 0 then
				bufresize.resize_open()
			end
		end, { desc = "[T]oggle [t]erminal" })
	end,
}

-- vim: ts=2 sts=2 sw=2 et
