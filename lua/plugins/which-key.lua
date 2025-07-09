return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		{ "<leader>f", group = "file" }, -- group
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
		{ "<leader>fn", "<cmd>enew<cr>", desc = "New File" },
		{ "<leader>f1", hidden = true }, -- hide this keymap
		{
			"<leader>b",
			group = "buffers",
			expand = function()
				return require("which-key.extras").expand.buf()
			end,
		},
		{
			"gl",
			vim.diagnostic.open_float,
			desc = "Diagnostic Float",
			"Open Diagnostic Float",
		},
		{
			"K",
			vim.lsp.buf.hover,
			desc = "Hover Documentation",
			"Hover Documentation",
		},
		{
			"gs",
			vim.lsp.buf.signature_help,
			desc = "Signature Documentation",
			"Signature Documentation",
		},
		{
			"gD",
			vim.lsp.buf.declaration,
			desc = "Goto Declaration",
			"Goto Declaration",
		},
		{ "gd", vim.lsp.buf.definition, desc = "Goto Definitinon", "Goto Definition" },
		{
			"<leader>la",
			vim.lsp.buf.code_action,
			desc = "Code Action",
			"Code Action",
		},
		{
			"<leader>lr",
			vim.lsp.buf.rename,
			desc = "Rename references",
			"Rename all references",
		},
		{
			"<leader>lf",
			require("conform").format,
			desc = "Format File",
			"Format",
		},
		{
			"grr",
			vim.lsp.buf.references,
			desc = "List references",
			"List References",
		},
		{ "<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", "Goto Definition in Vertical Split" },
	},
}
