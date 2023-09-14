-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local options = { noremap = true, silent = true }

local whichkey = {
  show = function()
    vim.fn.VSCodeNotify("whichkey.show")
  end
}

local search = {
  references = function()
    vim.fn.VSCodeNotify("editor.action.goToReferences")
  end
}

vim.keymap.set("n", "<C-u>", "12kzz")
vim.keymap.set("n", "<C-d>", "12jzz")

-- do not override the buffer when pasting
vim.keymap.set("v", "p", '"_dP"', options)

if vim.g.vscode then
  print("vscode in keymap brrr")
    -- print(vim.g.vscode)
    -- vim.keymap.set("n", "<leader>wh", require("vscode-neovim").notify, {"whichkey.show"})
  vim.keymap.set({ 'n', 'v' }, "<leader>", whichkey.show)
  vim.keymap.set('n', "gr", search.references)

end

-- vim.keymap.set("n", "<leader><leader>", VSCodeNotify("workbench.action.quickOpen"))

-- -- options-
-- vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
