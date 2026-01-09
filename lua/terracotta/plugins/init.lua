local M = {}

function M.apply()
  local config = require("terracotta.config").get()
  
  local plugins = {
    "telescope",
    "nvimtree",
    "treesitter",
    "lsp",
    "cmp",
    "gitsigns",
    "bufferline",
    "indent_blankline",
	"whichkey",
  }
  
  for _, plugin in ipairs(plugins) do
    if config.plugins[plugin] then
      local ok, module = pcall(require, "terracotta.plugins." .. plugin)
      if ok then
        module.setup()
      end
    end
  end
end

return M
