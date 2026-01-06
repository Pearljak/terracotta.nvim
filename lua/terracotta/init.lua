local M = {}

function M.setup(opts)
  require("terracotta.config").setup(opts)
end

function M.load()
  local config = require("terracotta.config").get()
  local theme = require("terracotta.theme")
  local highlights = theme.setup()
  
  if config.transparent then
    highlights.Normal.bg = "NONE"
    highlights.NormalFloat.bg = "NONE"
    highlights.SignColumn.bg = "NONE"
  end
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
  
  require("terracotta.plugins").apply()
end

return M
