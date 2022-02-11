local M = {}

M.config = function()
  --
  -- Telescope
  --
  local user_telescope = require "plugins.telescope"
  lvim.builtin.telescope.defaults.layout_config = user_telescope.layout_config()
  lvim.builtin.telescope.defaults.file_ignore_patterns = {
    "vendor/*",
    "node_modules/*",
    "public/build/*",
    "%.jpg",
    "%.jpeg",
    "%.png",
    "%.svg",
    "%.otf",
    "%.ttf",
    "%.woff",
    "%.woff2",
    ".git/",
  }
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings = {
    i = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-c>"] = actions.close,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
      ["<CR>"] = actions.select_default + actions.center,
    },
    n = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
    },
  }
  lvim.builtin.telescope.extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  }
  lvim.builtin.telescope.on_config_done = function()
    require("telescope").load_extension "fzy_native"
  end
  --
  -- Terminal
  --
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.float_opts = { border = "curved", winblend = 12 }
  --
  -- Which Key
  --
  lvim.builtin.which_key.setup.window.winblend = 12
  lvim.builtin.which_key.setup.ignore_missing = true
end

return M
