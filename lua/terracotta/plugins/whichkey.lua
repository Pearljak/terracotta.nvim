local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    WhichKey = { fg = c.brown_med, bold = true },
    WhichKeyGroup = { fg = c.purple },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.gray },
    WhichKeyFloat = { bg = c.bg_light },
    WhichKeyBorder = { fg = c.brown_med, bg = c.bg_light },
  }

  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
