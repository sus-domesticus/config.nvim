return {
	{
		"ggandor/flit.nvim",
		config = function()
			require("flit").setup({ labeled_modes = "nvo" })
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
