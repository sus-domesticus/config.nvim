vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set({ "n", "v" }, "-", '"_')
vim.keymap.set("n", "<c-d>", "<c-d>zvzz")
vim.keymap.set("n", "<c-u>", "<c-u>zvzz")
vim.keymap.set("n", "<c-f>", "<c-f>zvzz")
vim.keymap.set("n", "<c-b>", "<c-b>zvzz")

vim.keymap.set("n", "J", function()
	local save_cursor = vim.fn.getcurpos()
	for _ = 1, math.max(1, vim.v.count) do
		vim.cmd.join()
		vim.fn.setpos(".", save_cursor)
	end
end)

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end,
})

vim.keymap.set("n", "<leader>t", "<cmd>Neotree filesystem reveal right<cr>", { desc = "Neo[t]ree" })

-- vim: ts=2 sts=2 sw=2 et
