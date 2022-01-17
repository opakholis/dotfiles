local M = {}

M.config = function()
  local status_ok, ts_rainbow = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    return
  end

  ts_rainbow.setup {
    autopairs = { enable = true },
    autotag = { enable = true },
    highlight = { enable = true },
    rainbow = {
      enable = true,
      extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      colors = {
        "#8be9fd",
        "#ffb86c",
        "#ff79c6",
      }, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    },
  }
end

return M
