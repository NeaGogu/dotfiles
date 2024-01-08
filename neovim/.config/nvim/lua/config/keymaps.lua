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
  end,
  inFile = function()
    vim.fm.VSCodeNotify("actions.find")
  end

}


vim.keymap.set("n", "<C-u>", "12kzz")
vim.keymap.set("n", "<C-d>", "12jzz")

-- do not override the buffer when pasting
vim.keymap.set("v", "p", '"_dP"', options)

if vim.g.vscode then
  local vscode = require("vscode-neovim")
  print("vscode in keymap brrraaaapp")
  vim.notify = vscode.notify

    -- print(vim.g.vscode)
    -- vim.keymap.set("n", "<leader>wh", require("vscode-neovim").notify, {"whichkey.show"})
  -- vim.keymap.set({ 'n', 'v' }, "<leader>", whichkey.show)
  vim.keymap.set('n', "gr", search.references)
  vim.keymap.set('n', "<leader>/", search.inFile)
  
    vim.keymap.set('n', "==", function() vscode.call('editor.action.formatSelection') end, options)
    vim.keymap.set('v', "==", function() vscode.call('editor.action.formatSelection') end, optirns)
  
  vim.keymap.set('n', "<leader>rr", function() vscode.action("editor.action.rename") end, options) 
  
  vim.keymap.set('n', '<leader>ca', 
  function()
    vim.fn.VSCodeNotify("editor.action.quickFix")
  end)

end

-- vim.keymap.set("n", "<leader><leader>", VSCodeNotify("workbench.action.quickOpen"))

-- -- options-
-- vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
