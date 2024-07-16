return {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    opts = {
        -- Underline `@markup.link.*` variants
        underline_links = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,
    },
    init = function()
        vim.cmd.colorscheme "vscode"
    end,
}
