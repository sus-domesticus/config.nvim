local function get_lua_json5_build()
  if vim.uv.os_uname().sysname == "Linux" then
    return "./install.sh"
  end
  return "powershell ./install.ps1"
end

return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "Joakker/lua-json5",
        build = get_lua_json5_build(),
      },
    },
  },
}
