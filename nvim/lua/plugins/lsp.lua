return {
    {
        "williamboman/mason.nvim",
        config = true
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls", -- Lua
                "intelephense", -- PHP
                "volar", -- VueJS
                "tailwindcss", -- Tailwind CSS
            }
        }
    },
    {
        "neovim/nvim-lspconfig",
        init = function()
            local lsp = require("lspconfig")

            -- Lua
            lsp.lua_ls.setup({})

            -- PHP
            lsp.intelephense.setup({})

            -- VueJS
            lsp.volar.setup({
                filetypes = {
                    'typescript',
                    'javascript',
                    'javascriptreact',
                    'typescriptreact',
                    'vue',
                }
            })

            -- Tailwind CSS
            lsp.tailwindcss.setup({})

            -- keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({"n", "v"}, "<Leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, {})
        end
    },
}

