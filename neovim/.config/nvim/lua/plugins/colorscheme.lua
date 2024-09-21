--vim.cmd([[autocmd! ColorScheme * highlight NormalFloat bg=#2b3339 guibg=#2b3339]])
--vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=#d3c6aa guibg=#2b3339]])
--
--vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
--	border = "rounded",
--})

return {

	-- add gruvbox
	-- { "ellisonleao/gruvbox.nvim" },
	-- {

	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	opts = {
	-- 	priority = 1000,
	-- 		flavour = "mocha",
	-- 	},
	-- },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "main",
			dark_variant = "moon",
			styles = {
				transparency = true,
			},
			highlight_groups = {
				-- yellow bg
				-- NormalFloat = { bg = "#2b3339" },
				NormalFloat = { bg = "#2b3339", fg = "#abb2bf" },
				FloatBorder = { fg = "#61afef" },
			},
		},
	},

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "rose-pine",
		},
	},
	-- lalalal
}
