return {
	"voldikss/vim-floaterm",
	init = function()
		vim.g.floaterm_title = ""
		vim.g.floaterm_height = 0.85
		vim.g.floaterm_width = 0.85
		vim.g.floaterm_borderchars = "─│─│╭╮╯╰"

		vim.cmd(":hi FloatermBorder guibg=#1e1e2f guifg=#89b4fb")
		vim.keymap.set("n", "<F1>", ":FloatermToggle<CR>")
		vim.keymap.set("t", "<F1>", "<C-\\><C-n>:FloatermToggle<CR>")
	end,
}
