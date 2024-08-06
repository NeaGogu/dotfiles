return {
	-- lalala
	{

		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
			-- "ibhagwan/fzf-lua", -- optional
		},
		config = true,
		keys = function()
			local neogit = require("neogit")

			local keys = {
				{
					"<leader>gn",
					function()
						neogit.open({ kind = "auto" })
					end,
					desc = "Open neogit",
				},
			}

			return keys
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
