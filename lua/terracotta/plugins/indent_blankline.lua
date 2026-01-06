local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    IndentBlanklineChar = { fg = c.bg_lighter },
    IndentBlanklineContextChar = { fg = c.brown_dark },
    IndentBlanklineContextStart = { sp = c.brown_dark, underline = true },
    
    IblIndent = { fg = c.bg_lighter },
    IblScope = { fg = c.brown_dark },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
