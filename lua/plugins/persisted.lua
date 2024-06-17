return {
  {
    "olimorris/persisted.nvim",
    config = function()
      require("persisted").setup({ autosave = false })
      require("telescope").load_extension("persisted")
      vim.keymap.set("n", "<Leader>sp", "<Cmd>Telescope persisted<Cr>", { desc = "[S]earch [p]ersisted" })
    end,
  },
}
