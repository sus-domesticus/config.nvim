local function find_open()
	local wins = {}
	for _, win in pairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].filetype == "undotree" then
			table.insert(wins, win)
		end
	end
	return wins
end

return {
	{
		"jiaoshijie/undotree",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			local undotree = require("undotree")
			undotree.setup()

			vim.keymap.set("n", "<leader>u", function()
				local bufresize = require("bufresize")
				bufresize.register()
				bufresize.block_register()

				local open = find_open()

				if #open == 0 then
					undotree.open()
					bufresize.resize_open()
				else
					undotree.close()
					bufresize.resize_close()
				end
			end, { desc = "[U]ndotree" })
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
