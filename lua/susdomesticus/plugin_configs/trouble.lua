local M = {}

function M:setup()
    vim.keymap.set("n", "<leader>[t", vim.cmd.TroubleToggle);
end

return M
