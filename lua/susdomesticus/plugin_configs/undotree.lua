local M = {}

function M:setup()
    local wk = require("which-key")
    wk.register({
        ["<leader><F5>"] = { vim.cmd.UndotreeToggle, "Undo tree" }
    })
end

return M
