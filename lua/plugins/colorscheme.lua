return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load this before all other start plugins
    opts = {
      flavour = "mocha", -- Default flavour: latte, frappe, macchiato, mocha
      background = { -- Toggle variants based on terminal background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        rainbow_delimiters = true, -- Added this back in for your brackets!
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- Enable C++ specific highlights if needed
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
      },
    },
  },

  -- Configure LazyVim to load the correct Catppuccin flavor based on time
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local hour = tonumber(os.date("%H"))

        -- Daytime: 7 AM to 5:59 PM (Latte)
        if hour >= 7 and hour < 18 then
          vim.o.background = "light"
          vim.cmd.colorscheme("catppuccin-latte")
        -- Nighttime: 6 PM to 6:59 AM (Mocha)
        else
          vim.o.background = "dark"
          vim.cmd.colorscheme("catppuccin-mocha")
        end
      end,
    },
  },
}
