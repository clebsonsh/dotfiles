
    return {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        init = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<C-p>", builtin.find_files, {})
            vim.keymap.set("n", "<Leader>g", builtin.live_grep, {})
            vim.keymap.set("n", "<Leader><Leader>", builtin.buffers, {})
        end,
    }
