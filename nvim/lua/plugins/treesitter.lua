return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    init = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "javascript", "html", "php", "vue" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
