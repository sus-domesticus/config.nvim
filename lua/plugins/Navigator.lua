return {
  {
    "numToStr/Navigator.nvim",
    config = function()
      require("Navigator").setup({ disable_on_zoom = true })

      vim.keymap.set({ "n", "t" }, "<c-h>", "<CMD>NavigatorLeft<CR>", { desc = "tmux navigate left" })
      vim.keymap.set({ "n", "t" }, "<c-l>", "<CMD>NavigatorRight<CR>", { desc = "tmux navigate right" })
      vim.keymap.set({ "n", "t" }, "<c-k>", "<CMD>NavigatorUp<CR>", { desc = "tmux navigate up" })
      vim.keymap.set({ "n", "t" }, "<c-j>", "<CMD>NavigatorDown<CR>", { desc = "tmux navigate down" })
      vim.keymap.set({ "n", "t" }, "<c-\\>", "<CMD>NavigatorPrevious<CR>", { desc = "tmux navigate prev" })
    end,
  },
}
