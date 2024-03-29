return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = { theme = "auto" },
		winbar = { lualine_a = { "buffers" } },
	},
}

-- vim: ts=2 sts=2 sw=2 et
