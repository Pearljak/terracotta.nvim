local M = {}

M.colors = {
  brown_dark = "#8B4513",
  brown_med = "#D2691E",
  wheat = "#F5DEB3",
  tan = "#DEB887",
  cream = "#FFE4C4",

  ot = "#7D7D8D", -- for @tag.css/@type.tag.css
  bg = "#1a1410",
  bg_light = "#2a2420",
  bg_lighter = "#3a3430",
  fg = "#F5DEB3",
  fg_dim = "#DEB887",
  
  red = "#d87d7d",
  orange = "#D2691E",
  yellow = "#e6bc7a",
  green = "#9db085",
  cyan = "#8dbdbd",
  blue = "#8da5bd",
  purple = "#b89dbd",
  
  gray = "#6b5d56",
  gray_light = "#8b7d76",
  
  none = "NONE",
}

function M.darken(color, amount)
  local r = tonumber(color:sub(2, 3), 16)
  local g = tonumber(color:sub(4, 5), 16)
  local b = tonumber(color:sub(6, 7), 16)
  
  r = math.max(0, math.floor(r * (1 - amount)))
  g = math.max(0, math.floor(g * (1 - amount)))
  b = math.max(0, math.floor(b * (1 - amount)))
  
  return string.format("#%02x%02x%02x", r, g, b)
end

function M.lighten(color, amount)
  local r = tonumber(color:sub(2, 3), 16)
  local g = tonumber(color:sub(4, 5), 16)
  local b = tonumber(color:sub(6, 7), 16)
  
  r = math.min(255, math.floor(r + (255 - r) * amount))
  g = math.min(255, math.floor(g + (255 - g) * amount))
  b = math.min(255, math.floor(b + (255 - b) * amount))
  
  return string.format("#%02x%02x%02x", r, g, b)
end

return M
