return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		vim.keymap.set("n", "<Leader>a", function()
			harpoon:list():add()
		end)

		local toggle_opts = {
			border = "rounded",
			title_pos = "center",
			ui_width_ratio = 0.40,
		}

		vim.keymap.set("n", "<C-h>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts)
		end)

		vim.keymap.set("n", "<Leader>h", function()
			harpoon:list():select(1)
		end)

		vim.keymap.set("n", "<Leader>j", function()
			harpoon:list():select(2)
		end)

		vim.keymap.set("n", "<Leader>k", function()
			harpoon:list():select(3)
		end)

		vim.keymap.set("n", "<Leader>l", function()
			harpoon:list():select(4)
		end)
	end,
}
