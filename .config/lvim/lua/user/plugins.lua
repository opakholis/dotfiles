local M = {}

M.config = function()
  lvim.plugins = {
    {
      "andweeb/presence.nvim",
      config = function()
        require("user.presence").config()
      end,
      disable = not lvim.builtin.presence.active,
    },
    {
      "andymass/vim-matchup",
      event = "BufReadPost",
      config = function()
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
      end,
    },
    {
      "b0o/schemastore.nvim",
    },
    {
      "filipdutescu/renamer.nvim",
      config = function()
        require("renamer").setup {
          title = "Rename",
        }
      end,
      disable = not lvim.builtin.fancy_rename.active,
    },
    {
      "folke/lua-dev.nvim",
      ft = "lua",
      before = "williamboman/nvim-lsp-installer",
      disable = not lvim.builtin.lua_dev.active,
    },
    {
      "folke/persistence.nvim",
      event = "BufReadPre",
      module = "persistence",
      config = function()
        require("persistence").setup()
      end,
      disable = not lvim.builtin.persistence.active,
    },
    {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup()
      end,
      cmd = "Trouble",
    },
    {
      "folke/twilight.nvim",
      config = function()
        require("user.twilight").config()
      end,
      event = "BufRead",
    },
    {
      "folke/zen-mode.nvim",
      config = function()
        require("user.zen").config()
      end,
      event = "BufRead",
    },
    {
      "github/copilot.vim",
      config = function()
        vim.g.copilot_no_tab_map = true
        vim.g.copilot_assume_mapped = true
        vim.g.copilot_tab_fallback = ""
      end,
      disable = not lvim.builtin.sell_your_soul_to_devil,
    },
    {
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      ft = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
      },
      opt = true,
      before = "williamboman/nvim-lsp-installer",
    },
    {
      "karb94/neoscroll.nvim",
      config = function()
        require("neoscroll").setup()
      end,
      event = "BufRead",
      disable = not lvim.builtin.neoscroll.active,
    },
    {
      "kosayoda/nvim-lightbulb",
      config = function()
        vim.fn.sign_define(
          "LightBulbSign",
          { text = require("user.lsp_kind").icons.code_action, texthl = "DiagnosticInfo" }
        )
      end,
      event = "BufRead",
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        vim.g.indent_blankline_char = "▏"
      end,
      config = function()
        require("user.indent_blankline").config()
      end,
      event = "BufRead",
    },
    { "mfussenegger/nvim-jdtls", ft = "java" },
    {
      "Mofiqul/dracula.nvim",
    },
    {
      "nathom/filetype.nvim", -- Replace default filetype.vim which is slower
      config = function()
        require("filetype").setup {
          overrides = {
            literal = {
              ["kitty.conf"] = "kitty",
              [".gitignore"] = "conf",
            },
          },
        }
      end,
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.colorizer").config()
      end,
      event = "BufRead",
    },
    {
      "p00f/nvim-ts-rainbow",
      event = "BufRead",
      config = function()
        require("user.ts_rainbow").config()
      end,
    },
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user.lsp_signature").config()
      end,
      event = "BufRead",
    },
    {
      "windwp/nvim-ts-autotag",
      event = "InsertEnter",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function()
        require("user.spectre").config()
      end,
    },
  }
end

return M
