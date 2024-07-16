return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        config = {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "php" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        }
    }
}
