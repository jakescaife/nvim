return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			ensure_installed = {
				"go",
				"lua",
				"markdown",
				"css",
				"html",
				"json",
				"javascript",
				"typescript",
				"dockerfile",
				"c_sharp",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
