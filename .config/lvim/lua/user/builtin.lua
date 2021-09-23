local M = {}

M.config = function()
  -- CMP
  -- =========================================
  lvim.builtin.cmp.sources = {
    { name = "nvim_lsp", max_item_count = 7 },
    { name = "cmp_tabnine", max_item_count = 3 },
    { name = "buffer", max_item_count = 3 },
    { name = "path", max_item_count = 5 },
    { name = "luasnip", max_item_count = 3 },
    { name = "nvim_lua" },
    { name = "calc" },
    { name = "emoji" },
    { name = "treesitter" },
    { name = "crates" },
  }
  -- lvim.builtin.cmp.documentation.border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
  lvim.builtin.cmp.documentation.border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
  lvim.builtin.cmp.formatting = {
    format = function(entry, vim_item)
      local cmp_kind = require("user.lsp_kind").cmp_kind
      vim_item.kind = cmp_kind(vim_item.kind)
      vim_item.menu = ({
        buffer = "(Buffer)",
        nvim_lsp = "(LSP)",
        luasnip = "(Snip)",
        treesitter = " ",
        nvim_lua = "(NvLua)",
        spell = " 暈",
        emoji = "  ",
        path = "  ",
        calc = "  ",
        cmp_tabnine = "  ",
      })[entry.source.name]
      vim_item.dup = ({
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
      })[entry.source.name] or 0
      return vim_item
    end,
  }

  -- Dashboard
  -- =========================================
  lvim.builtin.dashboard.active = true
  lvim.builtin.dashboard.custom_section["m"] = {
    description = { "  Marks              " },
    command = "Telescope marks",
  }

  -- LSP
  -- =========================================
  lvim.lsp.diagnostics.signs.values = {
    { name = "LspDiagnosticsSignError", text = " " },
    { name = "LspDiagnosticsSignWarning", text = "" },
    { name = "LspDiagnosticsSignHint", text = "" },
    { name = "LspDiagnosticsSignInformation", text = "" },
  }

  -- Nvim Tree
  -- =========================================
  lvim.builtin.nvimtree.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 1
  lvim.builtin.nvimtree.hide_dotfiles = 0
  lvim.builtin.nvimtree.ignore = { ".git" }

  -- Project
  -- =========================================
  lvim.builtin.project.active = true

  -- Treesitter
  -- =========================================
  lvim.builtin.treesitter.autotag.enable = true
  lvim.builtin.treesitter.context_commentstring.enable = true
  lvim.builtin.treesitter.ensure_installed = "maintained"
  lvim.builtin.treesitter.ignore_install = { "haskell" }
  lvim.builtin.treesitter.matchup.enable = true
  lvim.builtin.treesitter.query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  }

  -- Telescope
  -- =========================================
  lvim.builtin.telescope.defaults.path_display = { shorten = 10 }
  lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
  lvim.builtin.telescope.defaults.file_ignore_patterns = {
    "vendor/*",
    "node_modules",
    "%.jpg",
    "%.jpeg",
    "%.png",
    "%.svg",
    "%.otf",
    "%.ttf",
  }
  lvim.builtin.telescope.defaults.layout_config = require("user.telescope").layout_config()

  -- Terminal
  -- =========================================
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.float_opts = { border = "single", winblend = 8 }
  lvim.builtin.terminal.execs = {
    { "lazygit", "gg", "LazyGit" },
  }

  -- WhichKey
  -- =========================================
  lvim.builtin.which_key.on_config_done = function(wk)
    local keys = {
      ["ga"] = { "<cmd>lua require('user.telescope').code_actions()<CR>", "Code Action" },
      ["gR"] = { "<cmd>Trouble lsp_references<CR>", "Goto References" },
      ["gI"] = { "<cmd>lua require('user.telescope').lsp_implementations()<CR>", "Goto Implementation" },
    }

    -- better keybindings for ts and tsx files
   local langs = { "typescript", "typescriptreact" }
    local ftype = vim.bo.filetype
    if vim.tbl_contains(langs, ftype) then
      local ts_keys = {
        ["gA"] = { "<cmd>TSLspImportAll<CR>", "Import All" },
        ["gr"] = { "<cmd>TSLspRenameFile<CR>", "Rename File" },
        ["gS"] = { "<cmd>TSLspOrganize<CR>", "Organize Imports" },
      }
      wk.register(ts_keys, { mode = "n" })
    end
    wk.register(keys, { mode = "n" })
  end

  -- ETC
  -- =========================================
  --   if lvim.builtin.lastplace.active == false then
  --     -- go to last loc when opening a buffer
  --     vim.cmd [[
  --   autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
  -- ]]
  --   end
end

return M
