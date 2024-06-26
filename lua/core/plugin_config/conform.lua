local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    java = { "google-java-format"},
    rust = { "rustfmt"},
    haskell = { "fourmolu"}
  },
})

local function formatWithConform()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end

vim.keymap.set( "n", "ä", formatWithConform, {silent = true})
