local function getCurrentSession()
  if vim.g.persisted_loaded_session == nil then
    return ""
  end
  local path = vim.fs.basename(vim.g.persisted_loaded_session)
  local delimiter = vim.fn.has("win32") == 1 and "\\" or "/"
  local result = ""
  for c in path:gmatch(".") do
    if c == "%" then
      result = result .. delimiter
    else
      result = result .. c
    end
  end
  return result
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = { theme = "auto" },
      sections = {
        lualine_c = { "filename" },
      },
      tabline = { lualine_a = { "buffers" }, lualine_z = { getCurrentSession } },
    })
  end,
}
