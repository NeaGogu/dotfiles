-- write hello world
-- write a function
function Dump(o)
	if type(o) == "table" then
		local s = "{ "
		for k, v in pairs(o) do
			if type(k) ~= "number" then
				k = '"' .. k .. '"'
			end
			s = s .. "[" .. k .. "] = " .. Dump(v) .. ","
		end
		return s .. "} "
	else
		return tostring(o)
	end
end

return {

	{
		"hrsh7th/nvim-cmp",
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			-- local has_words_before = function()
			--   unpack = unpack or table.unpack
			--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
			-- end

			local luasnip = require("luasnip")
			local cmp = require("cmp")

			local cmp_window = require("cmp.config.window")
			opts.window = {
				completion = {
					border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				},
				documentation = cmp_window.bordered(),
			}

			opts.mapping = cmp.mapping.preset.insert({
				-- Select the [n]ext item
				["<C-n>"] = cmp.mapping.select_next_item(),
				-- Select the [p]revious item
				["<C-p>"] = cmp.mapping.select_prev_item(),

				-- Scroll the documentation window [b]ack / [f]orward
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),

				-- Accept ([y]es) the completion.
				--  This will auto-import if your LSP supports it.
				--  This will expand snippets if the LSP sent a snippet.
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<S-CR>"] = cmp.mapping.confirm({ select = true }),

				-- Manually trigger a completion from nvim-cmp.
				--  Generally you don't need this, because nvim-cmp will display
				--  completions whenever it has completion options available.
				["<C-Space>"] = cmp.mapping.complete({}),

				-- Think of <c-l> as moving to the right of your snippet expansion.
				--  So if you have a snippet that's like:
				--  function $name($args)
				--    $body
				--  end
				--
				-- <c-l> will move you to the right of each of the expansion locations.
				-- <c-h> is similar, except moving you backwards.
				["<C-l>"] = cmp.mapping(function()
					if luasnip.expand_or_locally_jumpable() then
						luasnip.expand_or_jump()
					end
				end, { "i", "s" }),
				["<C-h>"] = cmp.mapping(function()
					if luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					end
				end, { "i", "s" }),

				-- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
				--    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
			})
		end,
	},
	{
		"folke/noice.nvim",
		opts = {
			presets = {
				lsp_doc_border = true,
			},
		},
	},
}
