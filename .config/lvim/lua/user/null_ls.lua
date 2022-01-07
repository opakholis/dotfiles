local M = {}

M.config = function()
  local status_ok, nls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  -- you can either config null-ls itself
  nls.setup {
    debounce = 150,
    save_after_format = false,
    sources = {
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
      nls.builtins.formatting.prettierd,
      nls.builtins.formatting.stylua,
      -- nls.builtins.formatting.goimports,
      -- nls.builtins.formatting.cmake_format,
      -- nls.builtins.formatting.sqlformat,
      nls.builtins.diagnostics.eslint_d.with {
        condition = function(utils)
          return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
      },
      -- nls.builtins.diagnostics.shellcheck,
      nls.builtins.formatting.shfmt.with { extra_args = { "-i", "2", "-ci" } },
      -- nls.builtins.diagnostics.luacheck,
      -- nls.builtins.diagnostics.vint,
      nls.builtins.code_actions.eslint_d.with {
        condition = function(utils)
          return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
      },
      nls.builtins.code_actions.shellcheck,
    },
  }
end

return M
