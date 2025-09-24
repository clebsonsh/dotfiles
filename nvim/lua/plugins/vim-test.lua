return {
  "vim-test/vim-test",
  init = function()
    vim.cmd("let test#php#phpunit#executable = './vendor/bin/pest'")
    vim.cmd("let test#strategy = 'floaterm'")
  end,
  keys = {
    { "<leader>tt", "<cmd>TestNearest<CR>" },
    { "<leader>tT", "<cmd>TestFile<CR>" },
    { "<leader>ta", "<cmd>TestSuite<CR>" },
    { "<leader>tl", "<cmd>TestLast<CR>" },
    { "<leader>tg", "<cmd>TestVisit<CR>" },
  },
}
