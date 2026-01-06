local c = require("terracotta.palette").colors

local M = {}

function M.setup()
  local highlights = {
    LspReferenceText = { bg = c.bg_lighter },
    LspReferenceRead = { bg = c.bg_lighter },
    LspReferenceWrite = { bg = c.bg_lighter },
    
    LspSignatureActiveParameter = { fg = c.orange, bold = true },
    
    LspCodeLens = { fg = c.gray, italic = true },
    LspCodeLensSeparator = { fg = c.gray },
    
    LspInlayHint = { fg = c.gray, italic = true },
    
    ["@lsp.type.class"] = { fg = c.yellow },
    ["@lsp.type.decorator"] = { fg = c.cyan },
    ["@lsp.type.enum"] = { fg = c.yellow },
    ["@lsp.type.enumMember"] = { fg = c.orange },
    ["@lsp.type.function"] = { fg = c.brown_med, bold = true },
    ["@lsp.type.interface"] = { fg = c.yellow },
    ["@lsp.type.macro"] = { fg = c.cyan },
    ["@lsp.type.method"] = { fg = c.brown_med, bold = true },
    ["@lsp.type.namespace"] = { fg = c.cyan },
    ["@lsp.type.parameter"] = { fg = c.fg_dim },
    ["@lsp.type.property"] = { fg = c.fg },
    ["@lsp.type.struct"] = { fg = c.yellow },
    ["@lsp.type.type"] = { fg = c.yellow },
    ["@lsp.type.typeParameter"] = { fg = c.yellow },
    ["@lsp.type.variable"] = { fg = c.fg },
  }
  
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
