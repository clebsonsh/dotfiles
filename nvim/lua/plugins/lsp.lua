return {
	{ "williamboman/mason.nvim", opts = {} },
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua", -- Lua
				"pint", -- PHP
				"phpstan", -- PHP
				"tsserver", -- Javascript
				"volar", -- Vue
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls", -- Lua
				"intelephense", -- PHP
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

			-- Tailwind CSS
			lsp.tailwindcss.setup({
				capabilities = capabilities,
			})

			-- Javascript
			lsp.tsserver.setup({
				capabilities = capabilities,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = "/home/clebson/.nvm/versions/node/v20.16.0/lib/node_modules/@vue/typescript-plugin",
							languages = { "javascript", "typescript", "vue" },
						},
					},
				},
				filetypes = {
					"javascript",
					"typescript",
					"vue",
				},
			})

			-- Vue
			lsp.volar.setup({
				capabilities = capabilities,
				filetypes = { "vue" },
				settings = {
					vue = {
						complete = {
							casing = {
								props = "autoCamel",
							},
						},
					},
				},
				init_options = {
					typescript = {
						tsdk = vim.fn.expand(
							"~/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"
						),
					},
				},
			})

			-- keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<Leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
		end,
	},
}
