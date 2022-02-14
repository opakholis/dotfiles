local M = {}

M.config = function()
  local status_ok, nls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  nls.setup {
    on_attach = require("lvim.lsp").common_on_attach,
    debounce = 150,
    save_after_format = false,
    sources = {
      -- formatters
      nls.builtins.formatting.prettierd.with {
        condition = function(utils)
          return not utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
      },
      nls.builtins.formatting.eslint_d.with {
        condition = function(utils)
          return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
      },
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.shfmt.with { extra_args = { "-i", "2", "-ci" } },
      nls.builtins.formatting.black.with { extra_args = { "--fast" }, filetypes = { "python" } },
      nls.builtins.formatting.isort.with { extra_args = { "--profile", "black" }, filetypes = { "python" } },
      -- linters
      nls.builtins.diagnostics.eslint_d.with {
        condition = function(utils)
          return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
      },
      nls.builtins.diagnostics.shellcheck,
      nls.builtins.diagnostics.luacheck,
      nls.builtins.diagnostics.stylelint,
      nls.builtins.diagnostics.flake8,
      nls.builtins.diagnostics.markdownlint.with {
        filetypes = { "markdown" },
      },
      nls.builtins.code_actions.shellcheck,
      -- code actions
      nls.builtins.code_actions.eslint_d.with {
        condition = function(utils)
          return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
      },
    },
  }
end

return M
