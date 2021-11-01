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
lvim.builtin.neoscroll = { active = true } -- smooth scrolling
require("user.builtin").config()
require("user.neovim").config()
require("user.plugins").config()
require("user.which_key").config()

lvim.builtin.notify.active = true
lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
lvim.lsp.automatic_servers_installation = false

-- Language Specific
-- =========================================
local custom_servers = { "sumneko_lua", "tsserver" }
vim.list_extend(lvim.lsp.override, custom_servers)
require("user.null_ls").config()
for _, server_name in ipairs(custom_servers) do
  local status_ok, custom_config = pcall(require, "/user/providers/" .. server_name)
  if status_ok then
    require("lvim.lsp.manager").setup(server_name, custom_config)
  end
end

-- Configure tailwindcss language server (conditionally)
require "user.tailwindcss"
