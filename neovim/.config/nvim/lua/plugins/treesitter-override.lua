return {
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters_by_ft = {
				["javascript"] = { "prettier" },
				["javascriptreact"] = { "prettier" },
				["typescript"] = { "prettier" },
				["typescriptreact"] = { "prettier" },
				["vue"] = { "prettier" },
				["css"] = { "prettier" },
				["scss"] = { "prettier" },
				["less"] = { "prettier" },
				["html"] = { "prettier" },
				["json"] = { "prettier" },
				["jsonc"] = { "prettier" },
				["yaml"] = { "prettier" },
				["markdown"] = { "prettier" },
				["markdown.mdx"] = { "prettier" },
				["graphql"] = { "prettier" },
				["handlebars"] = { "prettier" },
			},
		},
	},
	-- {
	-- 	"neovim/nvim-lspconfig",
	-- 	opts = {
	-- 		servers = { eslint = {} },
	-- 		setup = {
	-- 			eslint = function()
	-- 				require("lazyvim.util").lsp.on_attach(function(client)
	-- 					if client.name == "eslint" then
	-- 						client.server_capabilities.documentFormattingProvider = true
	-- 					elseif client.name == "tsserver" then
	-- 						client.server_capabilities.documentFormattingProvider = false
	-- 					end
	-- 				end)
	-- 			end,
	-- 		},
	-- 	},
	-- },
}
