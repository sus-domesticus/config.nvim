return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.laststatus = 3
      vim.opt.splitkeep = "screen"
    end,
    opts = {
      right = {
        { ft = "undotree", size = { height = 0.5 }, title = "Undo graph" },
        { ft = "diff", size = { height = 0.333 }, title = "Undo diff" },
        { ft = "dapui_scopes", title = "Scopes" },
        { ft = "dapui_breakpoints", title = "Breakpoints" },
        { ft = "dapui_stacks", title = "Stacks" },
        { ft = "dapui_watches", title = "Watches" },
      },
      bottom = {
        -- toggleterm / lazyterm at the bottom with a height of 40% of the screen
        {
          ft = "toggleterm",
          size = { height = 0.4 },
          -- exclude floating windows
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
        {
          ft = "dap-repl",
          size = { height = 0.4 },
          title = "Debug REPL",
        },
        {
          ft = "dapui_console",
          size = { height = 0.4 },
          title = "Debug Console",
        },
        { ft = "qf", title = "QuickFix" },
        {
          ft = "help",
          size = { height = 20 },
          -- only show help buffers
          filter = function(buf)
            return vim.bo[buf].buftype == "help"
          end,
        },
      },
    },
  },
}
