return {
  {
    "ggandor/leap.nvim",
    config = function()
      vim.keymap.set("n", "<CR>", "<Plug>(leap)")
    end,
  },
}
