return {
	"voldikss/vim-floaterm",
	config = function()
		-- vim.g.floaterm_width = 0.8
		vim.g.floaterm_height = 0.4
		vim.g.floaterm_wintype = "split"

		vim.keymap.set("n", "<F8>", ":FloatermToggle<CR>")
		vim.keymap.set("t", "<F8>", "<C-\\><C-n>:FloatermToggle<CR>")
	end,
}
