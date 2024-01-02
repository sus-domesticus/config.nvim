require("neodev").setup({
    library = { plugins = { "nvim-dap-ui" }, types = true }
})

local lsp = require("lsp-zero")
lsp.preset("recommended")

local cmp = require("cmp")
local cmp_action = lsp.cmp_action()

cmp.setup({
    snippet = {
      expand = function(args)
          require("luasnip").lsp_expand(args.body)
      end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
    }),
    sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" }
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr }
    local wk = require("which-key")
    wk.register({
        ["gd"] = { function() vim.lsp.buf.definition() end, "Go to definition" },
        ["K"] = { function() vim.lsp.buf.hover() end, "Hover" },
        ["[d"] = { function() vim.diagnostic.goto_next() end, "Go to next diagnostic" },
        ["]d"] = { function() vim.diagnostic.goto_prev() end, "Go to prev diagnostic" },
        ["<leader>v"] = {
            name = "+view_code",
            ["ws"] = { function() vim.lsp.buf.workspace_symbol() end, "View workspace symbols" },
            ["d"] = { function() vim.diagnostic.open_float() end, "View diagnostic" },
            ["ca"] = { function() vim.lsp.buf.code_action() end, "View code actions" },
            ["rr"] = { function() vim.lsp.buf.references() end, "View references" },
            ["rn"] = { function() vim.lsp.buf.rename() end, "Rename symbol" }
        }
    }, opts)
    wk.register({
        ["<C-h>"] = { function() vim.lsp.buf.signature_help() end, "Signature help" }
    }, { mode = "i", buffer = bufnr })
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "bashls", "rust_analyzer", "clangd", "pyright", "phpactor" }
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup { capabilities = capabilities }
lspconfig.bashls.setup { capabilities = capabilities }
lspconfig.rust_analyzer.setup { capabilities = capabilities }
lspconfig.clangd.setup { capabilities = capabilities }
lspconfig.pyright.setup { capabilities = capabilities }
lspconfig.phpactor.setup { capabilities = capabilities }
