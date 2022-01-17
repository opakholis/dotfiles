local M = {}

M.config = function()
  if not lvim.builtin.lualine.active then
    return
  end

  local components = require "lvim.core.lualine.components"

  -- Remove treesitter and lsp form the config
  lvim.builtin.lualine.sections.lualine_x = {
    components.diagnostics,
    components.filetype,
  }

  -- Replace progressbar with location
  lvim.builtin.lualine.sections.lualine_z = {
    components.location,
  }
end

return M
