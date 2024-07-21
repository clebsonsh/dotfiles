return {
	"vim-test/vim-test",
	init = function()
		vim.keymap.set("n", "<Leader>t", ":TestNearest<CR><CR>")
		vim.keymap.set("n", "<Leader>T", ":TestFile<CR>")
		vim.keymap.set("n", "<Leader>s", ":TestSuite<CR>")
		vim.keymap.set("n", "<Leader>p", ":TestLast<CR>")
		vim.keymap.set("n", "<Leader>o", ":TestVisit<CR>")
		vim.cmd("let test#php#phpunit#executable = './vendor/bin/pest'")
		vim.cmd("let test#strategy = 'floaterm'")

	end,
}
