local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    NvimTreeNormal = { fg = c.fg, bg = c.bg },
    NvimTreeNormalNC = { fg = c.fg, bg = c.bg },
    NvimTreeEndOfBuffer = { fg = c.bg, bg = c.bg },
    NvimTreeWinSeparator = { fg = c.bg_lighter, bg = c.bg },
    
    NvimTreeRootFolder = { fg = c.brown_med, bold = true },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.gray },
    NvimTreeOpenedFolderName = { fg = c.blue, bold = true },
    
    NvimTreeIndentMarker = { fg = c.gray },
    NvimTreeSymlink = { fg = c.cyan },
    NvimTreeExecFile = { fg = c.green },
    NvimTreeImageFile = { fg = c.purple },
    NvimTreeSpecialFile = { fg = c.yellow },
    
    NvimTreeGitDirty = { fg = c.red },
    NvimTreeGitStaged = { fg = c.green },
    NvimTreeGitMerge = { fg = c.orange },
    NvimTreeGitRenamed = { fg = c.purple },
    NvimTreeGitNew = { fg = c.yellow },
    NvimTreeGitDeleted = { fg = c.red },
    
    NvimTreeCursorLine = { bg = c.bg_lighter },
    NvimTreeWindowPicker = { fg = c.bg, bg = c.brown_med, bold = true },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
