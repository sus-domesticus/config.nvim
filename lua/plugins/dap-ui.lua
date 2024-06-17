local function config_rust()
  local dap = require("dap")

  local function create_adapters()
    if dap.adapters.gdb_rust ~= nil then
      return
    end
    dap.adapters.gdb_rust = {
      type = "executable",
      command = "gdb",
      args = { "-i", "dap" },
    }
  end

  local function create_configurations()
    if dap.configurations.rust ~= nil then
      return
    end
    require("dap.ext.vscode").load_launchjs(nil, { gdb_rust = { "rust" } })
  end

  vim.api.nvim_create_autocmd({ "VimEnter", "BufNew" }, {
    pattern = { "*.rs" },
    callback = function(event)
      local map = function(keys, func, desc)
        vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "DAP: " .. desc })
      end

      map("<F2>", function()
        create_adapters()
        create_configurations()
        vim.notify("continue")
        dap.continue()
      end, "Continue")
      map("<F3>", function()
        dap.step_over()
        vim.notify("step over")
      end, "Step over")
      map("<F4>", function()
        dap.step_into()
        vim.notify("step into")
      end, "Step into")
      map("<F5>", function()
        dap.step_out()
        vim.notify("step out")
      end, "Step out")
      map("<Leader>bp", dap.toggle_breakpoint, "Toggle [b]reak[p]oint")

      map("<Leader>du", require("dapui").open, "Open [d]ap[u]i")
    end,
  })
end

return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      require("dap.ext.vscode").json_decode = require("json5").parse
      require("dapui").setup()
      config_rust()
    end,
  },
}
