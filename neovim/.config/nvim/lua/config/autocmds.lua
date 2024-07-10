-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "javascript", "typescript", ".ts*", ".js*", ".jsx", ".tsx", "cjs", "mjs", "js" },
	callback = function()
		print("setting autoformat to false")
		vim.b.autoformat = false
	end,
})

-- for fixing bug when pressig tab after exiting snippet
vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*",
	callback = function()
		if
			((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
			and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
			and not require("luasnip").session.jump_active
		then
			require("luasnip").unlink_current()
		end
	end,
})

-- Create an autocommand group
local neogit_augrup = vim.api.nvim_create_augroup("NeogitBranchCheckoutGroup", { clear = true })

-- Create the autocommand
vim.api.nvim_create_autocmd("User", {
	pattern = "NeogitBranchCheckout",
	group = neogit_augrup,
	callback = function()
		print("NeogitBranchCheckout event triggered")

		-- Get the current buffer number
		local current_buf = vim.api.nvim_get_current_buf()

		-- Check if the buffer is valid
		if vim.api.nvim_buf_is_valid(current_buf) then
			local bufname = vim.api.nvim_buf_get_name(current_buf)
			print("Processing current buffer: " .. bufname)

			-- Refresh the current buffer
			vim.cmd("checktime")

			print("Finished refreshing current buffer: " .. bufname)
		else
			print("Current buffer is not valid")
		end

		print("Finished processing")
	end,
})

print("Autocommand for NeogitBranchCheckout has been set up")
