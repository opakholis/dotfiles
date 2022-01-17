local M = {}

M.config = function()
  -- Disable virtual text
  lvim.lsp.diagnostics.virtual_text = false

  -- Disable automatic installation of server
  lvim.lsp.automatic_servers_installation = false
end

return M
