local M = {}

function M:setup()
    local wk = require("which-key")
    wk.register({
        ["<leader>gs"] = { vim.cmd.Git, "Git status" }
    })
end

return M
