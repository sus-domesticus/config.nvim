return {
  {
    "cbochs/grapple.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    opts = {
      scope = "git_branch",
      icons = vim.g.have_nerd_font,
      quick_select = "123456789",
    },
    keys = {
      { ";", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

      { "<C-s>", "<cmd>Grapple toggle<cr>", desc = "Toggle tag" },
      { "H", "<cmd>Grapple cycle_tags prev<cr>", desc = "Go to previous tag" },
      { "L", "<cmd>Grapple cycle_tags next<cr>", desc = "Go to next tag" },
    },
  },
}
