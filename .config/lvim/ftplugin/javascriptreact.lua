local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettierd",
    filetypes = { "javascriptreact" },
    args = { "--no-semi", "--single-quote", "--jsx-bracket-same-line", "--jsx-single-quote" },
  },
}
