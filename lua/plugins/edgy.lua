return {
  "folke/edgy.nvim",
  opts = function(_, opts)
    table.insert(opts.left, { ft = "undotree", title = "UndoTree", size = { height = 0.5 } })
    table.insert(opts.left, { ft = "diff", title = "Diff", size = { height = 0.5 } })
  end,
}
