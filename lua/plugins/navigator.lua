return {
  {
    "numToStr/Navigator.nvim",
    config = function()
      require("Navigator").setup({ disable_on_zoom = true })

      vim.keymap.set({ "n", "t" }, "<C-h>", "<CMD>NavigatorLeft<CR>", { desc = "navigate left" })
      vim.keymap.set({ "n", "t" }, "<C-l>", "<CMD>NavigatorRight<CR>", { desc = "navigate right" })
      vim.keymap.set({ "n", "t" }, "<C-k>", "<CMD>NavigatorUp<CR>", { desc = "navigate up" })
      vim.keymap.set({ "n", "t" }, "<C-j>", "<CMD>NavigatorDown<CR>", { desc = "navigate down" })
    end,
  },
}
