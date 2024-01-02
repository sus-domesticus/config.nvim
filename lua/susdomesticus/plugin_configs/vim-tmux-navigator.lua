local M = {}

function M:setup()
    local wk = require("which-key")
    wk.register({
        ["<c-h>"] =  { vim.cmd.TmuxNavigateLeft, "Tmux navigate left" },
        ["<c-j>"] =  { vim.cmd.TmuxNavigateDown, "Tmux navigate down" },
        ["<c-k>"] =  { vim.cmd.TmuxNavigateUp, "Tmux navigate up" },
        ["<c-l>"] =  { vim.cmd.TmuxNavigateRight, "Tmux navigate right" },
        ["<c-\\>"] = { vim.cmd.TmuxNavigatePrevious, "Tmux navigate prev" }
    })
end

return M
