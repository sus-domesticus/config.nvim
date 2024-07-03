return {
  "olimorris/persisted.nvim",
  lazy = false,
  keys = {
    { "<leader>fp", "<CMD>Telescope persisted<CR>", desc = "[F]ind [p]rojects" },
  },
  config = function()
    require("persisted").setup({
      allowed_dirs = {
        "~/dotfiles",
        "~/src",
      },
    })
    require("telescope").load_extension("persisted")
  end,
}
