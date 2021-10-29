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
      event = "CursorMoved",
      config = function()
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
      end,
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
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      ft = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
      },
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
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        vim.g.indent_blankline_char = "▏"
      end,
      config = function()
        require("user.indent_blankline").config()
      end,
      event = "BufRead",
    },
    {
      "Mofiqul/dracula.nvim",
    },
    {
      "nathom/filetype.nvim", -- Replace default filetype.vim which is slower
      config = function()
        require("filetype").setup {
          overrides = {
            literal = {
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
    },
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user/lsp_signature").config()
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
