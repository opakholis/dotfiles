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
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.presence = { active = false } -- change to true if you want discord presence
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
require("user.builtin").config()
require("user.neovim").config()
require("user.plugins").config()
require("user.which_key").config()

lvim.lsp.automatic_servers_installation = true

-- Language Specific
-- =========================================
require("user.null_ls").config()
lvim.lsp.override = {"sumneko_lua", "tsserver"}
for _, server_name in pairs(lvim.lsp.override) do
  local lsp_installer_servers = require "nvim-lsp-installer.servers"
  local server_available, requested_server = lsp_installer_servers.get_server(server_name)
  if server_available then
    if not requested_server:is_installed() then
      if lvim.lsp.automatic_servers_installation then
        requested_server:install()
      else
        return
      end
    end
  end

  local default_config = {
    on_attach = require("lsp").common_on_attach,
    on_init = require("lsp").common_on_init,
    capabilities = require("lsp").common_capabilities(),
  }

  local status_ok, custom_config = pcall(require, "user/providers/" .. requested_server.name)
  if status_ok then
    local new_config = vim.tbl_deep_extend("force", default_config, custom_config)
    requested_server:setup(new_config)
  else
    requested_server:setup(default_config)
  end
end
