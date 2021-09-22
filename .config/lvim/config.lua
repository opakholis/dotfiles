-- Neovim
-- =========================================
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.transparent_window = false
lvim.hide_dotfiles = false
lvim.colorscheme = "dracula"
lvim.leader = "space"

-- Customization
-- =========================================
lvim.builtin.lua_dev = { active = false } -- change this to enable/disable folke/lua_dev
lvim.builtin.presence = { active = false } -- change to true if you want discord presence
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
require("user.builtin").config()
require("user.neovim").config()
require("user.plugins").config()
require("user.which_key").config()

-- Language Specific
-- =========================================
lvim.lang.markdown = {}
lvim.lang.typescriptreact.on_attach = lvim.lang.typescript.on_attach
lvim.lang.typescript.on_attach = function(client, _)
  require("nvim-lsp-ts-utils").setup_client(client)
end

lvim.builtin.lspinstall.on_config_done = function()
  lvim.lang.tailwindcss.lsp.setup.filetypes = { "javascript", "javascriptreact", "typescriptreact" }
  lvim.lang.tailwindcss.lsp.active = true
  require("lsp").setup "tailwindcss"
end
