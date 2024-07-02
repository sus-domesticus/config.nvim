return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "biome")
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.bib = { "bibtex-tidy" }
      opts.formatters_by_ft.tex = { "latexindent" }
    end,
  },
}
