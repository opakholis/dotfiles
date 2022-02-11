-- ==================
-- LunarVim built-in
-- ==================
--
require("plugins.builtin").config()
-- Lualine
require("plugins.lualine").config()
-- Nvim-tree
require("plugins.nvimtree").config()
-- Treesitter
require("plugins.treesitter").config()
--
-- ==================
-- additional plugins
-- ==================
--
lvim.plugins = {
  --
  -- Diagnostics
  --
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end,
    event = "BufWinEnter",
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").setup()
    end,
    event = "InsertEnter",
  },
  --
  -- Movement
  --
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end,
    event = "BufRead",
  },
  --
  -- Productivity
  --
  {
    "github/copilot.vim",
    config = function()
      require("plugins.copilot").config()
    end,
    disable = not lvim.builtin.sell_your_soul_to_devil,
  },
  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("renamer").setup {
        title = "Rename",
      }
    end,
    disable = not lvim.builtin.fancy_rename,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.zen-mode").config()
    end,
    event = "BufRead",
  },
  {
    "folke/twilight.nvim",
    config = function()
      require("plugins.twilight").config()
    end,
    event = "BufRead",
  },
  --
  -- Telescope
  --
  {
    "nvim-telescope/telescope-fzy-native.nvim",
  },
  --
  -- Themes
  --
  {
    "catppuccin/nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  {
    "p00f/nvim-ts-rainbow",
    event = "BufRead",
    config = function()
      require("plugins.ts_rainbow").config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("plugins.colorizer").config()
    end,
    event = "BufRead",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    setup = function()
      vim.g.indent_blankline_char = "▏"
    end,
    config = function()
      require("plugins.indent_blankline").config()
    end,
    event = "BufRead",
  },
}
