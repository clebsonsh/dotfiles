return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "macchiato",
            auto_integrations = true,
            transparent_background = true,
        })

        vim.cmd.colorscheme "catppuccin"
    end
}
