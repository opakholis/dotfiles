local M = {}

M.config = function()
  -- Disable keybinds
  lvim.builtin.which_key.mappings["p"] = nil -- packer functionality
  lvim.builtin.which_key.mappings["T"] = nil -- treesitter

  -- Find
  lvim.builtin.which_key.mappings["F"] = {
    name = "Find",
    f = { "<cmd>lua require('user.telescope').curbuf()<cr>", "Current Buffer" },
    g = { "<cmd>lua require('user.telescope').git_files()<cr>", "Git Files" },
    s = { "<cmd>lua require('user.telescope').git_status()<cr>", "Git Status" },
    z = { "<cmd>lua require('user.telescope').search_only_certain_files()<cr>", "Certain Filetype" },
  }

  -- Project
  -- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

  -- Replace
  lvim.builtin.which_key.mappings["r"] = {
    name = "Replace",
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Current Buffer" },
    p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  }

  -- Terminal
  lvim.builtin.which_key.mappings["t"] = {
    name = "+Terminal",
    b = { "<cmd>split term://zsh<cr>", "Terminal to below" },
    r = { "<cmd>vsplit term://zsh<cr>", "Terminal to right" },
  }

  -- Trouble
  lvim.builtin.which_key.mappings["d"] = {
    name = "+Diagnostics (Trouble)",
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics <Workspace>" },
  }

  -- Quit
  if lvim.builtin.persistence then
    lvim.builtin.which_key.mappings["q"] = {
      name = "+Quit",
      d = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
      l = { "<cmd>lua require('persistence').load(last=true)<cr>", "Restore last session" },
      s = { "<cmd>lua require('persistence').load()<cr>", "Restore for current dir" },
    }
  end
  -- Zen
  lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }

  -- Additional keybindings
  lvim.keys.insert_mode["<C-s>"] = "<cmd>lua vim.lsp.buf.signature_help()<cr>"
  lvim.keys.normal_mode["<S-x>"] = ":BufferClose<CR>"
  lvim.keys.normal_mode["gv"] = "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>"

  local ok, _ = pcall(require, "vim.diagnostic")
  if ok then
    lvim.builtin.which_key.mappings["l"]["j"] = {
      "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = 'single', focusable = false, source = 'always'}})<cr>",
      "Next Diagnostic",
    }
    lvim.builtin.which_key.mappings["l"]["k"] = {
      "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = 'single', focusable = false, source = 'always'}})<cr>",
      "Prev Diagnostic",
    }
  end
  lvim.builtin.which_key.mappings["l"]["f"] = {
    "<cmd>lua vim.lsp.buf.formatting_seq_sync()<cr>",
    "Format",
  }
  lvim.builtin.which_key.mappings["lh"] = {
    "<cmd>hi LspReferenceRead cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceText cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceWrite cterm=bold ctermbg=red guibg=#24283b<cr>",
    "Clear HL",
  }
end

return M
