return {
  "David-Kunz/gen.nvim",
  opts = {
    model = "qwen3-coder:30b",
    host = "localhost",
    port = "11434",
    display_mode = "vertical-split",
    show_prompt = true,
    show_model = true,
    no_auto_close = false,
  },
  keys = {
    -- Binds the leader key + 'cg' to open the Ollama prompt
    { "<leader>cg", ":Gen<CR>", mode = { "n", "v" }, desc = "Ollama Code Gen" },
  },
}
