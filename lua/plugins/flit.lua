return {
  {
    "ggandor/flit.nvim",
    config = function()
      require("flit").setup({ labeled_modes = "nvo" })
    end,
  },
}
