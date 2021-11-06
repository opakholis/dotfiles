local M = {}

M.config = function()
  local status_ok, nls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  -- you can either config null-ls itself
  nls.config {
    debounce = 150,
    save_after_format = false,
    sources = {
      nls.builtins.formatting.prettierd,
      nls.builtins.formatting.stylua,
      -- nls.builtins.formatting.goimports,
      -- nls.builtins.formatting.cmake_format,
      -- nls.builtins.formatting.sqlformat,
      nls.builtins.formatting.shfmt.with { extra_args = { "-i", "2", "-ci" } },
      nls.builtins.diagnostics.eslint_d,
      nls.builtins.diagnostics.shellcheck,
      nls.builtins.diagnostics.luacheck,
      nls.builtins.diagnostics.vint,
    },
  }

  -- or use the lunarvim syntax
  -- local formatters = require "lvim.lsp.null-ls.formatters"
  -- formatters.setup {
  --   {
  --     exe = "black",
  --     args = { "--fast" },
  --     filetypes = { "python" },
  --   },
  --   {
  --     exe = "isort",
  --     args = {
  --       "--profile",
  --       "black",
  --     },
  --     filetypes = { "python" },
  --   },
  -- }
  local linters = require "lvim.lsp.null-ls.linters"
  linters.setup {
    {
      exe = "markdownlint",
      filetypes = { "markdown" },
    },
  }
end

return M
