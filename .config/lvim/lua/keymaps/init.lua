-- Configure which-key plugin keymaps
require "keymaps.which-key"

-- Character delete uses specific regiater
vim.api.nvim_set_keymap("n", "x", '"xx', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "D", '"dD', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dd", '"ddd', { noremap = true, silent = true })

-- LunarVim keymaps
lvim.keys.insert_mode["jk"] = "<ESC>:w<CR>"
lvim.keys.normal_mode["<C-a>"] = "<ESC>ggVG<CR>"

-- Github Copilot
if lvim.builtin.sell_your_soul_to_devil then
  lvim.keys.insert_mode["<C-h>"] = { [[copilot#Accept("\<CR>")]], { expr = true, script = true } }
end
