local function createPythonAdapter(dap)
  dap.adapters.python = {
    type = "executable",
    command = os.getenv("VIRTUAL_ENV") .. "/bin/python",
    args = { "-m", "debugpy.adapter" },
  }
end

local function createPythonConfiguration(dap)
  dap.configurations.python = {
    {
      type = "python",
      request = "launch",
      name = "Launch file",
      program = "${file}",
    },
  }
end

local M = {}

function M.setup(dap)
  createPythonAdapter(dap)
  createPythonConfiguration(dap)
end

return M
