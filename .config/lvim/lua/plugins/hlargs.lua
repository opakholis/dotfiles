local M = {}

M.config = function()
  local status_ok, hlargs = pcall(require, "hlargs")
  if not status_ok then
    return
  end

  -- fetch colors from catppuccin API
  local cp_api = require "catppuccin.api.colors"
  local colors = cp_api.get_colors()

  hlargs.setup {
    color = colors.mauve,
    excluded_filetypes = {},
    paint_arg_declarations = true,
    paint_arg_usages = true,
    performance = {
      parse_delay = 1,
      max_iterations = 400,
    },
  }
end

return M
