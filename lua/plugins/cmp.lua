return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "https://codeberg.org/FelipeLema/cmp-async-path",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-l>"] = cmp.mapping(function()
        if luasnip.expand_or_locally_jumpable() then
          luasnip.expand_or_jump()
        end
      end, { "i", "s" }),
      ["<C-h>"] = cmp.mapping(function()
        if luasnip.locally_jumpable(-1) then
          luasnip.jump(-1)
        end
      end, { "i", "s" }),
    })

    for index, entry in ipairs(opts.sources) do
      if entry.name == "path" then
        table.remove(opts.sources, index)
        break
      end
    end
    table.insert(opts.sources, { name = "async_path" })
  end,
}
