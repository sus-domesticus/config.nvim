local M = {}

function M:setup()
    local wk = require("which-key")
    wk.register({
        ["<leader>pv"] = { vim.cmd.Explore, "Project view" }
    })


    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

    vim.keymap.set("n", "J", "mzJ`z")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set("n", "n", "nzzzv")
    vim.keymap.set("n", "N", "Nzzzv")

    vim.keymap.set("x", "<leader>p", "_dP")

    vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
    vim.keymap.set("n", "<leader>Y", [["+Y]])

    vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

    vim.keymap.set("n", "Q", "<nop>")
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

    local augroup_wk_basic = vim.api.nvim_create_augroup("WhichKeyBasic", {})
    vim.api.nvim_create_autocmd("BufEnter", {
        group = augroup_wk_basic,
        pattern = { "*.ly" },
        callback = function(ev)
            wk.register({
                ["<leader>l"] = {
                    name = "+lilypond",
                    y = {
                        name = "+lilypond",
                        p = {
                            function()
                                vim.cmd("silent cd ..")
                                vim.cmd("silent make prev")
                                vim.cmd("silent cd src")
                            end,
                            "Lilypond Preview"
                        },
                        b = {
                            function()
                                vim.cmd("silent cd ..")
                                vim.cmd("silent make")
                                vim.cmd("silent cd src")
                            end,
                            "Lilypond Build"
                        }
                    }
                }
            }, { buffer = ev.buf })
        end
    })
end

return M
