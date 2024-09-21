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
		-- opts = {
		-- 	-- Set the default way Neogit opens to a vertical split
		-- 	kind = "vsplit",
		--
		-- 	-- Customize the behavior when selecting a file
		-- 	mappings = {
		-- 		status = {
		-- 			["<C-CR>"] = function()
		-- 				-- Get the file under the cursor using Neogit's API
		-- 				local neogit = require("neogit")
		-- 				local file = neogit.status.()
		--
		-- 				if file and file.file then
		-- 					-- Store the current window number
		-- 					local current_win = vim.fn.winnr()
		--
		-- 					-- Find the first non-Neogit window
		-- 					vim.cmd("wincmd w")
		-- 					while vim.bo.filetype == "Neogit" and vim.fn.winnr() ~= current_win do
		-- 						vim.cmd("wincmd w")
		-- 					end
		--
		-- 					-- Open the file in this window
		-- 					vim.cmd("edit " .. file.file)
		--
		-- 					-- Go back to the Neogit window
		-- 					vim.cmd(current_win .. "wincmd w")
		-- 				end
		-- 			end,
		-- 		},
		-- 	},
		-- },
		config = true,
		keys = function()
			local neogit = require("neogit")

			local keys = {
				{
					"<leader>gn",
					function()
						neogit.open()
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
