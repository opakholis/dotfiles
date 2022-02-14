local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettierd",
    filetypes = { "javascript" },
    args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
  },
}
