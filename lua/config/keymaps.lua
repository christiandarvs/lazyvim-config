-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Save file with Ctrl+S in Normal, Insert, Visual, and Select modes
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

vim.keymap.set("n", "<leader><leader>", function()
  Snacks.picker.files({
    cwd = vim.fn.expand("%:p:h:h"),
  })
end, { desc = "Fuzzy find in current file directory" })
