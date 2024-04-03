return {
	"lewis6991/satellite.nvim",
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("satellite").setup({})

		vim.cmd([[highlight SatelliteBar ctermbg=159 guibg=LightCyan]])
	end,
}
-- vim: ts=2 sts=2 sw=2 et
