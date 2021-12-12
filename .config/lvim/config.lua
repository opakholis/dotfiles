-- Neovim
-- =========================================
vim.lsp.set_log_level "warn"
lvim.debug = false
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.transparent_window = false
lvim.colorscheme = "dracula"
lvim.leader = "space"

-- Customization
-- =========================================
lvim.builtin.sell_your_soul_to_devil = true -- if you want microsoft to abuse your soul
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.presence = { active = false } -- change to true if you want discord presence
lvim.builtin.persistence = { active = false } -- change to false if you don't want persistence
lvim.builtin.neoscroll = { active = true } -- smooth scrolling
lvim.builtin.fancy_rename = { active = true } -- fancy rename
require("user.builtin").config()
require("user.neovim").config()
require("user.plugins").config()
require("user.which_key").config()

lvim.builtin.notify.active = false
lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
lvim.lsp.automatic_servers_installation = false

require "user.lualine"

-- Language Specific
-- =========================================
require("user.null_ls").config()

-- Configure emmet language server (conditionally)
require "user.emmet"

-- Configure tailwindcss language server (conditionally)
require "user.tailwindcss"
