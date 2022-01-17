-- Which-key: +Diagnostics
lvim.builtin.which_key.mappings["d"] = {
  name = "+Diagnotics",
  t = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "Loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
}

-- Which-key: +Lsp
if lvim.builtin.fancy_rename then
  lvim.builtin.which_key.mappings["l"]["r"] = { "<cmd>lua require('renamer').rename()<cr>", "Rename" }
  lvim.builtin.which_key.vmappings["r"] = { "<ESC><CMD>lua require('renamer').rename()<CR>", "Rename" }
end

-- Which-key: +Terminal
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  b = { "<cmd>split term://zsh<cr>", "Terminal to below" },
  r = { "<cmd>vsplit term://zsh<cr>", "Terminal to right" },
}

-- Which-key: Zen-Mode
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" }
