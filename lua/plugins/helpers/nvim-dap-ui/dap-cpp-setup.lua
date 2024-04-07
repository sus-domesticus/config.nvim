local function createCPPAdapter(dap)
  dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "--quiet", "--interpreter=dap" },
  }
end

local function createCPPConfiguration(dap)
  dap.configurations.cpp = {
    {
      type = "gdb",
      request = "launch",
      name = "Run executable (GDB)",
      program = function()
        local path = vim.fn.input({
          prompt = "Path to executable: ",
          default = vim.fn.getcwd() .. "/",
          completion = "file",
        })

        return (path and path ~= "") and path or dap.ABORT
      end,
    },
  }
end

local M = {}

function M.setup(dap)
  createCPPAdapter(dap)
  createCPPConfiguration(dap)
end

return M
