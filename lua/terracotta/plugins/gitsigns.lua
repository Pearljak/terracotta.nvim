local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.blue },
    GitSignsDelete = { fg = c.red },
    GitSignsChangedelete = { fg = c.orange },
    GitSignsTopdelete = { fg = c.red },
    GitSignsUntracked = { fg = c.gray },
    
    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.blue },
    GitSignsDeleteNr = { fg = c.red },
    GitSignsChangedeleteNr = { fg = c.orange },
    GitSignsTopdeleteNr = { fg = c.red },
    GitSignsUntrackedNr = { fg = c.gray },
    
    GitSignsAddLn = { fg = c.green, bg = c.bg },
    GitSignsChangeLn = { fg = c.blue, bg = c.bg },
    GitSignsDeleteLn = { fg = c.red, bg = c.bg },
    GitSignsChangedeleteLn = { fg = c.orange, bg = c.bg },
    GitSignsTopdeleteLn = { fg = c.red, bg = c.bg },
    GitSignsUntrackedLn = { fg = c.gray, bg = c.bg },
    
    GitSignsAddInline = { fg = c.green, bg = c.bg_light },
    GitSignsChangeInline = { fg = c.blue, bg = c.bg_light },
    GitSignsDeleteInline = { fg = c.red, bg = c.bg_light },
    
    GitSignsCurrentLineBlame = { fg = c.gray, italic = true },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
