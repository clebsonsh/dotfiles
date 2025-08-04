return {
  "voldikss/vim-floaterm",
  init = function()
    vim.g.floaterm_wintype = "split"
    vim.g.floaterm_title = ""
    vim.g.floaterm_height = 0.99

    vim.g.floaterm_keymap_toggle = "<C-j>"
  end,
}
