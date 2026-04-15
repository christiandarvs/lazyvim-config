return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local hour = tonumber(os.date("%H"))

        -- Daytime: 7 AM to 5:59 PM (Light Mode)
        if hour >= 7 and hour < 18 then
          vim.o.background = "light"
        -- Nighttime: 6 PM to 6:59 AM (Dark Mode)
        else
          vim.o.background = "dark"
        end

        -- Load the colorscheme
        vim.cmd.colorscheme("oxocarbon")

        -- Patch the "black box" bug for Light Mode
        if vim.o.background == "light" then
          -- Make visual selections a subtle dark gray
          vim.api.nvim_set_hl(0, "Visual", { bg = "#d0d0d0", fg = "NONE" })

          -- Make LSP highlighted words (like functions) a soft gray instead of pitch black
          vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#e0e0e0", fg = "NONE" })
          vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#e0e0e0", fg = "NONE" })
          vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#e0e0e0", fg = "NONE" })

          -- Fix CursorLine visibility (optional but recommended)
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#f4f4f4" })
        end
      end,
    },
  },
}
