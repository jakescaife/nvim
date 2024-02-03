return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local ui = require("harpoon.ui")
		local mark = require("harpoon.mark")
		vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu, {})
		vim.keymap.set("n", "<leader>ha", mark.add_file, {})

		for i = 1, 9 do
			vim.keymap.set(
				"n",
				string.format("<leader>h%d", i),
				string.format(':lua require("harpoon.ui").nav_file(%d)<CR>', i),
				{}
			)
		end
	end,
}
