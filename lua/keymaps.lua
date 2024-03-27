vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set({ "n", "v" }, "-", '"_')
vim.keymap.set("n", "<c-d>", "<c-d>zvzz")
vim.keymap.set("n", "<c-u>", "<c-u>zvzz")

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

vim.keymap.set("t", "<c-h>", "<cmd>wincmd h<cr>")
vim.keymap.set("t", "<c-j>", "<cmd>wincmd j<cr>")
vim.keymap.set("t", "<c-k>", "<cmd>wincmd k<cr>")
vim.keymap.set("t", "<c-l>", "<cmd>wincmd l<cr>")

vim.keymap.set({ "n", "t" }, "<C-Up>", "<cmd>resize -2<cr>", { desc = "Resize -2" })
vim.keymap.set({ "n", "t" }, "<C-Down>", "<cmd>resize +2<cr>", { desc = "Resize +2" })
vim.keymap.set({ "n", "t" }, "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Vertical resize -2" })
vim.keymap.set({ "n", "t" }, "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Vertical resize +2" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end,
})

-- vim: ts=2 sts=2 sw=2 et
