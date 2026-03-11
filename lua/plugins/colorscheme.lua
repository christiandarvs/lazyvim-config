return {
  -- 1. Install and configure the catppuccin plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure to load this before all the other start plugins
    opts = {
      flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
      transparent_background = false,
    },
  },

  -- 2. Tell LazyVim to use catppuccin as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
