return {
  "voldikss/vim-floaterm",
  init = function()
    vim.g.floaterm_title = ""
    vim.g.floaterm_height = 0.95
    vim.g.floaterm_width = 0.95

    vim.cmd(":hi FloatermBorder guibg=#1e1e2f guifg=#89b4fb")

    vim.g.floaterm_keymap_toggle = '<C-j>'
  end,
}
