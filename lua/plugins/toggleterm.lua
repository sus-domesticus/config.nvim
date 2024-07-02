return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({ start_in_insert = false })

      vim.keymap.set("n", "<Leader>ut", function()
        if vim.v.count == 0 then
          vim.cmd("ToggleTermToggleAll")
        else
          vim.cmd('exe v:count . "ToggleTerm"')
        end
      end, { desc = "[T]oggle [t]erminal" })
    end,
  },
}
