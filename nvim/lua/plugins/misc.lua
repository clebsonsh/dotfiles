return {
	-- Commenting support.
	"tpope/vim-commentary",

	-- Add, change, and delete surrounding text.
	"tpope/vim-surround",

	-- Indent autodetection with editorconfig support.
	"tpope/vim-sleuth",

	-- Allow plugins to enable repeating of commands.
	"tpope/vim-repeat",

	-- Jump to the last location when opening a file.
	"farmergreg/vim-lastplace",

	-- Add smooth scrolling to avoid jarring jumps
	{
		"karb94/neoscroll.nvim",
		config = true,
	},

	-- Automatically add closing brackets, quotes, etc.
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},

	-- All closing buffers without closing the split window.
	{
		"famiu/bufdelete.nvim",
		init = function()
			vim.keymap.set("n", "<C-w>", ":Bdelete<CR>")
		end,
	},

	-- Split arrays and methods onto multiple lines, or join them back up.
	-- split keybind gS
	-- join keybind gJ
	{
		"AndrewRadev/splitjoin.vim",
		init = function()
			vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
			vim.g.splitjoin_trailing_comma = 1
			vim.g.splitjoin_php_method_chain_full = 1
		end,
	},

	-- Automatically fix indentation when pasting code.
	{
		"sickill/vim-pasta",
		init = function()
			vim.g.pasta_disabled_filetypes = { "fugitive" }
		end,
	},

	-- Display indentation lines.
	{
		"lukas-reineke/indent-blankline.nvim",
		init = function()
			require("ibl").setup()
		end,
	},

	-- Zen mode
	{
		"folke/zen-mode.nvim",
		init = function()
			vim.keymap.set("n", "<Leader>z", ":ZenMode<CR>")
		end,
	},
}
