return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		sections = {
			lualine_a = { "branch" },
			lualine_b = { "diff", "diagnostics" },
			lualine_c = {},
			lualine_x = { "filename" },
			lualine_y = { "location" },
			lualine_z = { "mode" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
	},
}
