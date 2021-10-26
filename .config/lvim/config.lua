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
require("user.null_ls").config()
require("user.lsp_install").install()
lvim.lsp.override = { "sumneko_lua", "tsserver" }

-- Configure tailwindcss language server (conditionally)
require "user.tailwindcss"
