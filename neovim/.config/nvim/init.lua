-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

print("hello there")
-- disable copilot by default bcs this shit is annoying
-- vim.api.nvim_cmd({
-- 	cmd = "Copilot",
-- 	args = { "disable" },
--
-- }, { output = false})

vim.cmd(":Copilot disable")
--
local output = vim.api.nvim_cmd({
	cmd = "Copilot",
}, {
	output = true,
})
--
print("disabled copilot: " .. output)

if vim.g.vscode then
	print("neovim in vscode")
end
