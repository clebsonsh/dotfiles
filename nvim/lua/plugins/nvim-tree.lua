return {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
        require("nvim-tree").setup({
            view = {
                side = "right",
            },
            git = {
                ignore = false,
            },
            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        folder_arrow = false,
                    },
                },
                indent_markers = {
                    enable = true,
                },
            },
        })

        vim.keymap.set("n", "<Leader>e", ":NvimTreeFindFileToggle<CR>")
    end,
}
