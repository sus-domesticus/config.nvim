local function telescopeConfig(harpoon)
	local conf = require("telescope.config").values
	local function toggle_telescope(harpoon_files)
		local file_paths = {}
		for _, item in ipairs(harpoon_files.items) do
			table.insert(file_paths, item.value)
		end

		require("telescope.pickers")
			.new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			})
			:find()
	end

	vim.keymap.set("n", "<leader>h", function()
		toggle_telescope(harpoon:list())
	end, { desc = "Open [h]arpoon window" })
end

local function harpoonKeymaps(harpoon)
	vim.keymap.set("n", "<leader>a", function()
		harpoon:list():append()
	end, { desc = "[A]ppend harpoon window" })

	vim.keymap.set("n", "<C-f>", function()
		harpoon:list():select(1)
	end, { desc = "Select harpoon window 1" })
	vim.keymap.set("n", "<C-t>", function()
		harpoon:list():select(2)
	end, { desc = "Select harpoon window 2" })
	vim.keymap.set("n", "<C-n>", function()
		harpoon:list():select(3)
	end, { desc = "Select harpoon window 3" })
	vim.keymap.set("n", "<C-s>", function()
		harpoon:list():select(4)
	end, { desc = "Select harpoon window 4" })

	vim.keymap.set("n", "<leader>k", function()
		harpoon:list():prev()
	end, { desc = "Select prev harpoon window" })
	vim.keymap.set("n", "<leader>j", function()
		harpoon:list():next()
	end, { desc = "Select next harpoon window" })
end

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		---@diagnostic disable-next-line: missing-parameter
		harpoon:setup()

		telescopeConfig(harpoon)
		harpoonKeymaps(harpoon)
	end,
}

-- vim: ts=2 sts=2 sw=2 et
