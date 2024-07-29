return {
	"nvimtools/none-ls.nvim",
	init = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.pint,
				null_ls.builtins.diagnostics.phpstan,
			},
		})

		vim.keymap.set("n", "<Leader>f", vim.lsp.buf.format, {})
	end,
}
