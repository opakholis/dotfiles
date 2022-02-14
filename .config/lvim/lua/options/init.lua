-- Format buffer when buffer/file is saved
lvim.format_on_save = true

-- Leader key
lvim.leader = "space"

-- Theme/ColorScheme
lvim.colorscheme = "catppuccin"

-- Debug
-- lvim.log.level = "warn"

-- Nvim
require("options.neovim").config()

-- Plugins
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true

-- if you want microsoft to abuse your soul
lvim.builtin.sell_your_soul_to_devil = true

-- fancy rename
lvim.builtin.fancy_rename = true

-- enable/disable editorconfig
lvim.builtin.editorconfig = true
