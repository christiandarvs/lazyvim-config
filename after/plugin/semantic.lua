vim.highlight.priorities.semantic_tokens = 95

local set = vim.api.nvim_set_hl

-- VSCode-like semantic tokens

set(0, "@lsp.type.function", { link = "Function" })
set(0, "@lsp.type.method", { link = "Function" })

set(0, "@lsp.type.variable", { link = "Identifier" })
set(0, "@lsp.type.parameter", { fg = "#9CDCFE" })

set(0, "@lsp.type.namespace", { fg = "#4EC9B0" })

set(0, "@lsp.type.class", { fg = "#4EC9B0" })
set(0, "@lsp.type.struct", { fg = "#4EC9B0" })

set(0, "@lsp.type.keyword", { link = "Keyword" })
set(0, "@lsp.type.string", { link = "String" })
set(0, "@lsp.type.number", { link = "Number" })
