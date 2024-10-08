return {
	"lewis6991/gitsigns.nvim",
	opts = { current_line_blame = true },
	init = function()
		vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>")
		vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>")
		vim.keymap.set("n", "gs", ":Gitsigns stage_hunk<CR>")
		vim.keymap.set("n", "gS", ":Gitsigns undo_stage_hunk<CR>")
		vim.keymap.set("n", "gp", ":Gitsigns preview_hunk<CR>")
		vim.keymap.set("n", "gb", ":Gitsigns blame_line<CR>")
	end,
}
