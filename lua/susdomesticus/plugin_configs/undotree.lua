local M = {}

function M:setup()
    vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)
end

return M
