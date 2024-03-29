-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "javascript", "typescript" ,".ts*", ".js*", ".jsx", ".tsx", "cjs", "mjs", "js" },
	callback = function()
		print("setting autoformat to false")
		vim.b.autoformat = false
	end,
})
