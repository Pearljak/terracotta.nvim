local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    TelescopeBorder = { fg = c.brown_med, bg = c.bg },
    TelescopePromptBorder = { fg = c.brown_med, bg = c.bg },
    TelescopeResultsBorder = { fg = c.brown_med, bg = c.bg },
    TelescopePreviewBorder = { fg = c.brown_med, bg = c.bg },
    
    TelescopeSelection = { fg = c.fg, bg = c.bg_lighter },
    TelescopeSelectionCaret = { fg = c.brown_med, bg = c.bg_lighter },
    TelescopeMultiSelection = { fg = c.purple, bg = c.bg_lighter },
    
    TelescopeNormal = { fg = c.fg, bg = c.bg },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_light },
    TelescopeResultsNormal = { fg = c.fg, bg = c.bg },
    TelescopePreviewNormal = { fg = c.fg, bg = c.bg },
    
    TelescopePromptPrefix = { fg = c.brown_med },
    TelescopePromptCounter = { fg = c.gray },
    
    TelescopeMatching = { fg = c.orange, bold = true },
    TelescopeTitle = { fg = c.brown_med, bold = true },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
