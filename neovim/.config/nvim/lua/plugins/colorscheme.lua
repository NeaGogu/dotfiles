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
			variant = "moon",
			dark_variant = "moon",
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
