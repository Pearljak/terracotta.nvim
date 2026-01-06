local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    BufferLineFill = { bg = c.bg_light },
    BufferLineBackground = { fg = c.gray, bg = c.bg_light },
    BufferLineBufferVisible = { fg = c.fg_dim, bg = c.bg_light },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true },
    
    BufferLineTab = { fg = c.gray, bg = c.bg_light },
    BufferLineTabSelected = { fg = c.brown_med, bg = c.bg, bold = true },
    BufferLineTabClose = { fg = c.red, bg = c.bg_light },
    
    BufferLineIndicatorSelected = { fg = c.brown_med, bg = c.bg },
    BufferLineSeparator = { fg = c.bg_lighter, bg = c.bg_light },
    BufferLineSeparatorVisible = { fg = c.bg_lighter, bg = c.bg_light },
    BufferLineSeparatorSelected = { fg = c.bg_lighter, bg = c.bg },
    
    BufferLineCloseButton = { fg = c.gray, bg = c.bg_light },
    BufferLineCloseButtonVisible = { fg = c.gray, bg = c.bg_light },
    BufferLineCloseButtonSelected = { fg = c.red, bg = c.bg },
    
    BufferLineModified = { fg = c.orange, bg = c.bg_light },
    BufferLineModifiedVisible = { fg = c.orange, bg = c.bg_light },
    BufferLineModifiedSelected = { fg = c.orange, bg = c.bg },
    
    BufferLineDuplicate = { fg = c.gray, bg = c.bg_light, italic = true },
    BufferLineDuplicateVisible = { fg = c.fg_dim, bg = c.bg_light, italic = true },
    BufferLineDuplicateSelected = { fg = c.fg, bg = c.bg, italic = true },
    
    BufferLineError = { fg = c.red, bg = c.bg_light },
    BufferLineErrorVisible = { fg = c.red, bg = c.bg_light },
    BufferLineErrorSelected = { fg = c.red, bg = c.bg },
    
    BufferLineWarning = { fg = c.yellow, bg = c.bg_light },
    BufferLineWarningVisible = { fg = c.yellow, bg = c.bg_light },
    BufferLineWarningSelected = { fg = c.yellow, bg = c.bg },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
