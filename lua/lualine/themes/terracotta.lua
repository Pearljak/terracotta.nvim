local c = require("terracotta.palette").colors

local terracotta = {}

terracotta.normal = {
  a = { bg = c.brown_med, fg = c.bg, gui = "bold" },
  b = { bg = c.bg_lighter, fg = c.fg },
  c = { bg = c.bg_light, fg = c.fg_dim },
}

terracotta.insert = {
  a = { bg = c.green, fg = c.bg, gui = "bold" },
  b = { bg = c.bg_lighter, fg = c.fg },
}

terracotta.visual = {
  a = { bg = c.purple, fg = c.bg, gui = "bold" },
  b = { bg = c.bg_lighter, fg = c.fg },
}

terracotta.replace = {
  a = { bg = c.red, fg = c.bg, gui = "bold" },
  b = { bg = c.bg_lighter, fg = c.fg },
}

terracotta.command = {
  a = { bg = c.yellow, fg = c.bg, gui = "bold" },
  b = { bg = c.bg_lighter, fg = c.fg },
}

terracotta.inactive = {
  a = { bg = c.bg_light, fg = c.gray },
  b = { bg = c.bg_light, fg = c.gray },
  c = { bg = c.bg_light, fg = c.gray },
}

return terracotta
