local M = {}

function M:setup()
    local wk = require("which-key")
    wk.register({
        ["<leader>["] = {
            name = "+diagnostic",
            t = { vim.cmd.TroubleToggle, "Toggle diagnostic window" }
        }
    })
end

return M
