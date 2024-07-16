return {
    "voldikss/vim-floaterm",
    config = function()
        vim.g.floaterm_height = 0.7
        vim.g.floaterm_wintype = "split"
        vim.keymap.set("n", "<F1>", ":FloatermToggle<CR>")
        vim.keymap.set("t", "<F1>", "<C-\\><C-n>:FloatermToggle<CR>")
    end
}
