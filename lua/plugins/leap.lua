return {
  "ggandor/leap.nvim",
  dependencies = { "tpope/vim-repeat" },
  config = function()
    local leap = require("leap")
    leap.opts.equivalence_classes =
      { " \t\r\n", "aäăâ", "AÄĂÂ", "iî", "IÎ", "oö", "OÖ", "uü", "UÜ", "sșß", "SȘ", "tț", "TȚ" }
    vim.keymap.set({ "n", "v", "o" }, "<leader><leader>", "<Plug>(leap)", { desc = "Leap" })
    vim.keymap.set("n", "<C-w><leader>", "<Plug>(leap-from-window)", { desc = "Leap from window" })
  end,
}
