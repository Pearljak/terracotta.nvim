local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    CmpItemAbbrDeprecated = { fg = c.gray, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.brown_med, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.brown_med },
    
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindInterface = { fg = c.yellow },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindFunction = { fg = c.brown_med },
    CmpItemKindMethod = { fg = c.brown_med },
    CmpItemKindKeyword = { fg = c.purple },
    CmpItemKindProperty = { fg = c.fg },
    CmpItemKindUnit = { fg = c.orange },
    CmpItemKindModule = { fg = c.cyan },
    CmpItemKindClass = { fg = c.yellow },
    CmpItemKindField = { fg = c.fg },
    CmpItemKindEnum = { fg = c.yellow },
    CmpItemKindSnippet = { fg = c.green },
    CmpItemKindColor = { fg = c.orange },
    CmpItemKindFile = { fg = c.blue },
    CmpItemKindReference = { fg = c.blue },
    CmpItemKindFolder = { fg = c.blue },
    CmpItemKindEnumMember = { fg = c.orange },
    CmpItemKindConstant = { fg = c.orange },
    CmpItemKindStruct = { fg = c.yellow },
    CmpItemKindEvent = { fg = c.purple },
    CmpItemKindOperator = { fg = c.fg_dim },
    CmpItemKindTypeParameter = { fg = c.yellow },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
