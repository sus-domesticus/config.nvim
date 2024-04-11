return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },
  opts = {},
  config = function(opts)
    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("dap-ui-lsp-attach", { clear = true }),
      callback = function(event)
        local success, dapSetup = pcall(require, "plugins.helpers.nvim-dap-ui.dap-" .. vim.bo.filetype .. "-setup")
        if not success then
          return
        end
        local dap = require("dap")
        dapSetup.setup(dap)

        local dapui = require("dapui")
        dapui.setup(opts)

        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "DAP: " .. desc })
        end

        map("<leader>B", function()
          dapui.toggle()
        end, "toggle UI")

        map("<F10>", function()
          dap.step_over()
        end, "step over")

        map("<F11>", function()
          dap.step_into()
        end, "step into")

        map("<F12>", function()
          dap.step_out()
        end, "step out")

        map("<leader>br", function()
          dap.toggle_breakpoint()
        end, "toggle breakpoint")

        map("<F5>", function()
          dap.continue()
        end, "continue")
      end,
    })
  end,
}
