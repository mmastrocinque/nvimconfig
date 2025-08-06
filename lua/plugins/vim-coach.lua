return {
	"shahshlok/vim-coach.nvim",
	dependencies = {
		"folke/snacks.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("vim-coach").setup()
	end,
	keys = {
		{ "<leader>?", "<cmd>VimCoach<cr>", desc = "Vim Coach" },
	},
}
