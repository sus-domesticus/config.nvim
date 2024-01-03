vim.g.mapleader = " "

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

local augroup_basic = vim.api.nvim_create_augroup("Basic", {})
vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup_basic,
    pattern = { "Makefile" },
    callback = function ()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.expandtab = false
    end
})

vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup_basic,
    pattern = { "~/.config/nvim/**/*.lua" },
    callback = function ()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end
})

vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup_basic,
    pattern = { "*.ly" },
    callback = function ()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end
})
