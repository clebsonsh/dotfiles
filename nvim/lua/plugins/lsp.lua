return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls", -- Lua
				"intelephense", -- PHP
				"volar", -- VueJS
				"tailwindcss", -- Tailwind CSS
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		init = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lsp = require("lspconfig")

			-- Lua
			lsp.lua_ls.setup({
				capabilities = capabilities,
			})

			-- PHP
			lsp.intelephense.setup({
				capabilities = capabilities,
			})

			-- VueJS
			lsp.volar.setup({
				capabilities = capabilities,
				filetypes = {
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"vue",
				},
			})

			-- Tailwind CSS
			lsp.tailwindcss.setup({
				capabilities = capabilities,
			})

			-- keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<Leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
		end,
	},
}
