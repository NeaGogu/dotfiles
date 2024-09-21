return {
	"nvim-telescope/telescope.nvim",
	enabled = true,
	keys = {
		{
			"<leader>/",
			function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end,
			desc = "Search in current buffer",
		},
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
			end,
			desc = "Search files (also hidden)",
		},
	},
	opts = {
		defaults = {
			file_ignore_patterns = {
				-- "node_modules",
				-- ".idea",
				-- ".misc",
				-- ".DS_Store",
				-- ".git",
			},
		},
		pickers = {
			find_files = {
				hidden = true,
			},
		},
	},
}
--
--
