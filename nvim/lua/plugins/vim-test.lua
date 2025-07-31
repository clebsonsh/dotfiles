return {
  "vim-test/vim-test",
  init = function()
    vim.keymap.set("n", "<Leader>tt", ":TestNearest<CR>")
    vim.keymap.set("n", "<Leader>tT", ":TestFile<CR>")
    vim.keymap.set("n", "<Leader>ta", ":TestSuite<CR>")
    vim.keymap.set("n", "<Leader>tl", ":TestLast<CR>")
    vim.keymap.set("n", "<Leader>tg", ":TestVisit<CR>")
    vim.cmd("let test#php#phpunit#executable = './vendor/bin/pest'")
    vim.cmd("let test#strategy = 'floaterm'")
  end,
}
