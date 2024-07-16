return {

    "Mofiqul/vscode.nvim",
    name = "vscode",
    init = function()
        require('vscode').setup({
            -- Underline `@markup.link.*` variants
            underline_links = true,

            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,
        })
        vim.cmd.colorscheme "vscode"
    end,
}
