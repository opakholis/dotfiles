local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettierd",
    filetypes = { "typescript" },
    args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
  },
}
