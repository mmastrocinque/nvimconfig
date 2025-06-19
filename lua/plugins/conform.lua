return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({

			formatters = {
				csharpier = function()
					local useDotnet = not vim.fn.executable("csharpier")

					local command = useDotnet and "dotnet csharpier" or "csharpier"

					local version_out = vim.fn.system(command .. " --version")

					--vim.notify(version_out)

					--NOTE: system command returns the command as the first line of the result, need to get the version number on the final line
					local version_result = version_out[#version_out]
					local major_version = tonumber((version_out or ""):match("^(%d+)")) or 0
					local is_new = major_version >= 1

					--vim.notify(tostring(is_new))

					local args = is_new and { "format", "$FILENAME" } or { "--write-stdout" }

					return {
						command = command,
						args = args,
						stdin = not is_new,
						require_cwd = false,
					}
				end,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				json = { "fixjson" },
				cs = { "csharpier" },
				rust = { "rustfmt" },
			},
			-- format_on_save = {
			--     lsp_fallback = true,
			--     async = false,
			-- },
		})
	end,
}
