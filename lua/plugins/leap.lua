return {
  "ggandor/leap.nvim",
  dependencies = { "tpope/vim-repeat" },
  config = function()
    vim.keymap.set({ "n", "v", "o" }, "<leader><leader>", "<Plug>(leap)", { desc = "Leap" })
    vim.keymap.set("n", "<C-w><leader>", "<Plug>(leap-from-window)", { desc = "Leap from window" })
  end,
}
