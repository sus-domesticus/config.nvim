return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "https://codeberg.org/FelipeLema/cmp-async-path",
  },
  opts = function(_, opts)
    for index, entry in ipairs(opts.sources) do
      if entry.name == "path" then
        table.remove(opts.sources, index)
        break
      end
    end
    table.insert(opts.sources, { name = "async_path" })
  end,
}
