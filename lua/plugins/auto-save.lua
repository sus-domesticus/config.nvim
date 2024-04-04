return {
	"okuuva/auto-save.nvim",
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
	opts = {
		debounce_delay = 120 * 1000, -- 120 seconds
	},
}

-- vim: ts=2 sts=2 sw=2 et
