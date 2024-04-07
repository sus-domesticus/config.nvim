return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    debounce_delay = 120 * 1000, -- 120 seconds
  },
}
