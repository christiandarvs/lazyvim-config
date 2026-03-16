return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,
        transparent = true,
        theme = "dragon", -- wave, dragon, lotus
        overrides = function(colors)
          local theme = colors.theme
          return {
            -- Explicitly style the popup menu to match the Dragon theme
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Popup menu background
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Selected item background
            PmenuSbar = { bg = theme.ui.bg_m1 }, -- Scrollbar background
            PmenuThumb = { bg = theme.ui.bg_p2 }, -- Scrollbar thumb

            -- Optional: If you want floating windows (like hover docs) to match
            NormalFloat = { bg = theme.ui.bg_p1 },
            FloatBorder = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          }
        end,
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
