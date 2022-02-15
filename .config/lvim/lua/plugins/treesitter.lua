local M = {}

M.config = function()
  if not lvim.builtin.treesitter.active then
    return
  end

  -- if you don't want all the parsers change this to a table of the ones you want
  lvim.builtin.treesitter.ensure_installed = "maintained"
  lvim.builtin.treesitter.playground.enable = true
  lvim.builtin.treesitter.highlight.enabled = true
  lvim.builtin.treesitter.autotag.enable = true
end

return M
