return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "[F]ind [B]uffer" })
			vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "[F]ind with [G]rep" })
			vim.keymap.set("n", "<leader>gf", telescope.git_files, { desc = "[G]it [F]iles" })
			vim.keymap.set("n", "<leader>gs", telescope.git_status, { desc = "[G]it [S]tatus" })
			vim.keymap.set("n", "<leader>gc", telescope.git_commits, { desc = "[G]it [C]ommits" })
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	},
}
