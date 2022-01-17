local M = {}

M.config = function()
  vim.g.dashboard_disable_statusline = 1
  vim.opt.timeoutlen = 500 -- Keymap timeout
  vim.opt.relativenumber = true -- Relative row number
  vim.opt.wrap = true
  vim.opt.cmdheight = 1
  -- https://sw.kovidgoyal.net/kitty/faq/#some-special-symbols-are-rendered-small-truncated-in-kitty
  vim.cmd [[let &t_ut='']]
end

return M
