local M = {}

function M:setup()
    local builtin = require("telescope.builtin")
    local wk = require("which-key")

    wk.register({
        ["pf"] = { builtin.find_files, "Project files" },
        ["gf"] = { builtin.git_files, "Git files" },
        ["<space>"] = { builtin.buffers, "Buffers" },
        ["?"] = { builtin.oldfiles, "Old files" },
        ["/"] = { builtin.current_buffer_fuzzy_find, "Buffer fuzzy find" },
        t = {
            name = "Telescope",
            r = { builtin.resume, "Telescope resume" },
            t = { vim.cmd.Telescope, "Telescope search" }
        }
    }, { prefix = "<leader>" })
end

return M
