local M = {}

M.config = function()
  local status_ok, ts_rainbow = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    return
  end

  -- fetch colors from catppuccin API
  local cp_api = require "catppuccin.api.colors"
  local colors = cp_api.get_colors()

  ts_rainbow.setup {
    rainbow = {
      enable = true,
      disable = { "html" },
      extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
      max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
      colors = {
        colors.mauve,
        colors.sky,
        colors.green,
      }, -- table of hex strings
    },
  }
end

return M
