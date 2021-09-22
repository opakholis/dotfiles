local M = {}

M.config = function()
  -- Project
  lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

  -- Replace
  lvim.builtin.which_key.mappings["R"] = {
    name = "Replace",
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Current Buffer" },
    p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  }

  -- Trouble
  lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    t = { "<cmd>TodoLocList <cr>", "Todo" },
    w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
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
end

return M
