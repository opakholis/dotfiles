local M = {}

M.config = function()
  if not lvim.builtin.nvimtree.active then
    return
  end

  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.setup.auto_close = 1
  lvim.builtin.nvimtree.show_icons.git = 0
end

return M
