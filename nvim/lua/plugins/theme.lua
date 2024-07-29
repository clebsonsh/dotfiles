return {
	{
		"Mofiqul/vscode.nvim",
		name = "vscode",
		opts = {
			-- Underline `@markup.link.*` variants
			underline_links = true,

			-- Disable nvim-tree background color
			disable_nvimtree_bg = true,
		},
		init = function()
			vim.cmd.colorscheme("vscode")
		end,
	},
	{
		enabled = false,
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
			},
			highlight_overrides = {
				mocha = function(mocha)
					return {
						NvimTreeNormal = { bg = mocha.none },
					}
				end,
			},
		},
		init = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
