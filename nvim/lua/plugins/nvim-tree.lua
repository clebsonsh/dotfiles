return {
	"kyazdani42/nvim-tree.lua",
	requires = "kyazdani42/nvim-web-devicons",
	opts = {
		view = {
			side = "right",
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
