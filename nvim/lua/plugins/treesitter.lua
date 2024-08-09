return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		init = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"bash",
					"comment",
					"css",
					"diff",
					"dockerfile",
					"git_config",
					"git_rebase",
					"gitattributes",
					"gitcommit",
					"gitignore",
					"go",
					"html",
					"http",
					"ini",
					"javascript",
					"json",
					"jsonc",
					"lua",
					"make",
					"markdown",
					"passwd",
					"php",
					"phpdoc",
					"python",
					"regex",
					"sql",
					"typescript",
					"vim",
					"vue",
					"xml",
					"yaml",
				},
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{ "windwp/nvim-ts-autotag", opts = {} },
}
