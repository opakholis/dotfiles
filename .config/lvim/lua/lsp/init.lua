-- General Configuration
require("lsp.config").config()
-- Null-ls
require("lsp.null_ls").config()
-- Emmet LS
require "lsp.emmet"
-- Tailwindcss
require "lsp.tailwindcss"

-- Disable formatting capability of tsserver and jsonls
-- as we use prettier and/or eslint_d to format/fix
lvim.lsp.on_attach_callback = function(client, _)
  if client.name ~= "tsserver" and client.name ~= "jsonls" then
    return
  end

  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
end
