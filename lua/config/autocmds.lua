-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local set = vim.api.nvim_set_hl

    -- VS Code Colors
    local blue = "#569CD6"
    local pink = "#C586C0"
    local teal = "#4EC9B0"
    local orange = "#CE9178"

    -- Force Treesitter overrides for C++
    set(0, "@type.builtin", { fg = blue, bold = false }) -- int, void
    set(0, "@keyword.type", { fg = blue, bold = false }) -- int, void (fallback)
    set(0, "@keyword.modifier", { fg = blue }) -- namespace
    set(0, "@keyword.import", { fg = pink }) -- using
    set(0, "@keyword.directive", { fg = pink }) -- #include
    set(0, "@module", { fg = teal }) -- std
    set(0, "@string.special.path", { fg = orange }) -- <iostream>
    set(0, "@string.unquoted.include", { fg = orange }) -- <iostream> (fallback)
  end,
})
