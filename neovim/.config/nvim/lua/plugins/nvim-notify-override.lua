return {
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 2000,
			render = "minimal",
			stages = "static",
			max_height = function()
				return math.floor(vim.o.lines * 0.50)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.40)
			end,
		},
	},

	{
		"nvim-navic",
		enabled = false,
	},
}
