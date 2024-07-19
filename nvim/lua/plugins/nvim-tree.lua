return {
	"kyazdani42/nvim-tree.lua",
	dependencies = {
		{ "kyazdani42/nvim-web-devicons", lazy = true },
	},
	opts = {
		view = {
			side = "right",
			width = 40,
		},
		git = {
			ignore = false,
		},
		renderer = {
			group_empty = true,
			icons = {
				show = {
					folder_arrow = false,
				},
			},
			indent_markers = {
				enable = true,
			},
		},
	},
	init = function()
		vim.keymap.set("n", "<Leader>e", ":NvimTreeFindFileToggle<CR>")
	end,
}
