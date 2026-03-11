return {

  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      max_lines = 3,
    },
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│" },
      scope = { enabled = true },
    },
  },
}
