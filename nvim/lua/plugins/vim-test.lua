return {
	"vim-test/vim-test",
	init = function()
		vim.keymap.set("n", "<Leader>t", ":TestNearest<CR>")
		vim.keymap.set("n", "<Leader>T", ":TestFile<CR>")
		vim.keymap.set("n", "<Leader>a", ":TestSuite<CR>")
		vim.keymap.set("n", "<Leader>l", ":TestLast<CR>")
		vim.keymap.set("n", "<Leader>g", ":TestVisit<CR>")
		vim.cmd("let test#php#phpunit#executable = './vendor/bin/pest'")
	end,
}
