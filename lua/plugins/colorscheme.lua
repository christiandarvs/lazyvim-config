return {
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    priority = 1000,
    lazy = false,
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

        -- [Optional] Zenwritten/Zenbones specific configurations
        -- These must be set BEFORE calling vim.cmd.colorscheme
        -- If you switch to "zenbones", change the prefix to vim.g.zenbones
        vim.g.zenwritten_italic_comments = true
        vim.g.zenwritten_transparent_background = false
        vim.g.zenwritten_darken_comments = 38 -- Light mode comment darkness
        vim.g.zenwritten_lighten_comments = 38 -- Dark mode comment lightness
        vim.g.zenwritten_darken_noncurrent_window = false
        vim.cmd.colorscheme("zenwritten")
      end,
    },
  },
}
