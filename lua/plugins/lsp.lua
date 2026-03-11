return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--fallback-style=Google",
            "--header-insertion=iwyu",
          },
        },
      },
    },
  },
}
