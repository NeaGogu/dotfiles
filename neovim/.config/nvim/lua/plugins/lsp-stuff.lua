local cmp = require("cmp")

return {
	{
		"hrsh7th/nvim-cmp",
		keys = {
			{
				"<C-Space>",
				function()
					cmp.complete()
				end,
			},
		},
	},
}
