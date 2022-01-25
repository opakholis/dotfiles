local M = {}

M.config = function()
  require("catppuccin").setup {
    transparent_background = true,
    integrations = {
      barbar = true,
      bufferline = false,
      ts_rainbow = true,
      telekasten = false,
      which_key = true,
    },
  }
end

return M
