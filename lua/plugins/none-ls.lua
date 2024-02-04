return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
			},
		})

		vim.keymap.set("n", "<leader>uf", vim.lsp.buf.format, { desc = "[U]pdate [F]ormatting" })
	end,
}
