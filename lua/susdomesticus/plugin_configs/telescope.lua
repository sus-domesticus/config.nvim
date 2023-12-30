local M = {}

function M:setup()
    local builtin = require("telescope.builtin")

    -- File Pickers
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<leader>gf", builtin.git_files, {})

    -- Vim Pickers
    vim.keymap.set("n", "<leader><space>", builtin.buffers, {})
    vim.keymap.set("n", "<leader>?", builtin.oldfiles, {})
    vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set("n", "<leader>tr", builtin.resume, {})
    vim.keymap.set("n", "<leader>tt", vim.cmd.Telescope, {})
end

return M
