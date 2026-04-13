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

        vim.cmd.colorscheme("oxocarbon")
      end,
    },
  },
}
