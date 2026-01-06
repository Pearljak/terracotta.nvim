local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    TSRainbowRed = { fg = c.red },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowBlue = { fg = c.blue },
    TSRainbowOrange = { fg = c.orange },
    TSRainbowGreen = { fg = c.green },
    TSRainbowViolet = { fg = c.purple },
    TSRainbowCyan = { fg = c.cyan },
    
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { fg = c.brown_med, bold = true },
    ["@text.literal"] = { fg = c.green },
    ["@text.uri"] = { fg = c.cyan, underline = true },
    ["@text.math"] = { fg = c.blue },
    ["@text.reference"] = { fg = c.blue },
    ["@text.environment"] = { fg = c.purple },
    ["@text.environment.name"] = { fg = c.yellow },
    
    ["@comment"] = { fg = c.gray, italic = true },
    ["@punctuation.delimiter"] = { fg = c.fg_dim },
    ["@punctuation.bracket"] = { fg = c.fg_dim },
    ["@punctuation.special"] = { fg = c.orange },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
