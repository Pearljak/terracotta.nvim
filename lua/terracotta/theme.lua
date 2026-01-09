local palette = require("terracotta.palette")
local c = palette.colors

local M = {}

function M.setup()
  local config = require("terracotta.config").get()
  local theme = {}

  -- testing 
  local border = config.border_style == "rounded" and "rounded" or "single"
  theme.FloatBorder = { fg = c.brown_med }

  theme.Normal = { fg = c.fg, bg = c.bg }
  theme.NormalFloat = { fg = c.fg, bg = c.bg_light }
  theme.NormalNC = { fg = c.fg_dim, bg = c.bg }

  if config.dim_inactive then
    theme.NormalNC = { fg = c.fg_dim, bg = c.bg }
  end

  theme.Comment = vim.tbl_extend("force", { fg = c.gray }, config.styles.comments)
  theme.Constant = { fg = c.orange }
  theme.String = vim.tbl_extend("force", { fg = c.green }, config.styles.strings)
  theme.Character = { fg = c.green }
  theme.Number = { fg = c.orange }
  theme.Boolean = { fg = c.orange }
  theme.Float = { fg = c.orange }

  theme.Identifier = vim.tbl_extend("force", { fg = c.fg }, config.styles.variables)
  theme.Function = vim.tbl_extend("force", { fg = c.brown_med, bold = true }, config.styles.functions)

  theme.Statement = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme.Conditional = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme.Repeat = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme.Label = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme.Operator = { fg = c.fg_dim }
  theme.Keyword = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme.Exception = { fg = c.red }

  theme.PreProc = { fg = c.cyan }
  theme.Include = { fg = c.purple }
  theme.Define = { fg = c.purple }
  theme.Macro = { fg = c.cyan }
  theme.PreCondit = { fg = c.cyan }

  theme.Type = { fg = c.yellow }
  theme.StorageClass = { fg = c.purple }
  theme.Structure = { fg = c.yellow }
  theme.Typedef = { fg = c.yellow }

  theme.Special = { fg = c.blue }
  theme.SpecialChar = { fg = c.orange }
  theme.Tag = { fg = c.brown_med }
  theme.Delimiter = { fg = c.fg_dim }
  theme.SpecialComment = { fg = c.gray_light, italic = true }
  theme.Debug = { fg = c.red }

  theme.Underlined = { underline = true }
  theme.Ignore = { fg = c.gray }
  theme.Error = { fg = c.red, bold = true }
  theme.Todo = { fg = c.bg, bg = c.yellow, bold = true }

  theme.Cursor = { fg = c.bg, bg = c.fg }
  theme.CursorLine = { bg = c.bg_light }
  theme.CursorColumn = { bg = c.bg_light }
  theme.ColorColumn = { bg = c.bg_light }
  theme.CursorLineNr = { fg = c.brown_med, bold = true }
  theme.LineNr = { fg = c.gray }
  theme.SignColumn = { bg = c.bg }
  theme.FoldColumn = { fg = c.gray, bg = c.bg }
  theme.Folded = { fg = c.gray, bg = c.bg_light }

  theme.Visual = { bg = c.bg_lighter }
  theme.VisualNOS = { bg = c.bg_lighter }
  theme.Search = { fg = c.bg, bg = c.yellow }
  theme.IncSearch = { fg = c.bg, bg = c.orange }
  theme.CurSearch = { fg = c.bg, bg = c.orange }

  theme.Pmenu = { fg = c.fg, bg = c.bg_light }
  theme.PmenuSel = { fg = c.bg, bg = c.brown_med }
  theme.PmenuSbar = { bg = c.bg_lighter }
  theme.PmenuThumb = { bg = c.brown_dark }

  theme.StatusLine = { fg = c.fg, bg = c.bg_light }
  theme.StatusLineNC = { fg = c.gray, bg = c.bg_light }
  theme.TabLine = { fg = c.gray, bg = c.bg_light }
  theme.TabLineFill = { bg = c.bg_light }
  theme.TabLineSel = { fg = c.fg, bg = c.bg }

  theme.VertSplit = { fg = c.bg_lighter }
  theme.WinSeparator = { fg = c.bg_lighter }

  theme.WildMenu = { fg = c.bg, bg = c.brown_med }
  theme.Directory = { fg = c.blue }
  theme.Title = { fg = c.brown_med, bold = true }
  theme.MoreMsg = { fg = c.green }
  theme.ModeMsg = { fg = c.green, bold = true }
  theme.Question = { fg = c.blue }
  theme.WarningMsg = { fg = c.yellow }
  theme.ErrorMsg = { fg = c.red }

  theme.MatchParen = { fg = c.orange, bold = true }
  theme.NonText = { fg = c.gray }
  theme.SpecialKey = { fg = c.gray }
  theme.Whitespace = { fg = c.gray }

  theme.DiffAdd = { fg = c.green, bg = palette.darken(c.green, 0.8) }
  theme.DiffChange = { fg = c.blue, bg = palette.darken(c.blue, 0.8) }
  theme.DiffDelete = { fg = c.red, bg = palette.darken(c.red, 0.8) }
  theme.DiffText = { fg = c.yellow, bg = palette.darken(c.yellow, 0.7) }

  theme.SpellBad = { sp = c.red, undercurl = true }
  theme.SpellCap = { sp = c.blue, undercurl = true }
  theme.SpellLocal = { sp = c.cyan, undercurl = true }
  theme.SpellRare = { sp = c.purple, undercurl = true }

  theme.DiagnosticError = { fg = c.red }
  theme.DiagnosticWarn = { fg = c.yellow }
  theme.DiagnosticInfo = { fg = c.blue }
  theme.DiagnosticHint = { fg = c.cyan }
  theme.DiagnosticUnderlineError = { sp = c.red, undercurl = true }
  theme.DiagnosticUnderlineWarn = { sp = c.yellow, undercurl = true }
  theme.DiagnosticUnderlineInfo = { sp = c.blue, undercurl = true }
  theme.DiagnosticUnderlineHint = { sp = c.cyan, undercurl = true }

  theme["@variable"] = vim.tbl_extend("force", { fg = c.fg }, config.styles.variables)
  theme["@variable.builtin"] = { fg = c.orange }
  theme["@variable.parameter"] = { fg = c.fg_dim }
  theme["@variable.member"] = vim.tbl_extend("force", { fg = c.fg }, config.styles.variables)

  theme["@constant"] = { fg = c.orange }
  theme["@constant.builtin"] = { fg = c.orange }
  theme["@constant.macro"] = { fg = c.cyan }

  theme["@module"] = { fg = c.cyan }
  theme["@label"] = { fg = c.purple }

  theme["@string"] = vim.tbl_extend("force", { fg = c.green }, config.styles.strings)
  theme["@string.regex"] = { fg = c.orange }
  theme["@string.escape"] = { fg = c.orange }

  theme["@character"] = { fg = c.green }
  theme["@number"] = { fg = c.orange }
  theme["@boolean"] = { fg = c.orange }
  theme["@float"] = { fg = c.orange }

  theme["@function"] = vim.tbl_extend("force", { fg = c.brown_med, bold = true }, config.styles.functions)
  theme["@function.builtin"] = vim.tbl_extend("force", { fg = c.brown_med, bold = true }, config.styles.functions)
  theme["@function.macro"] = { fg = c.cyan }
  theme["@function.method"] = vim.tbl_extend("force", { fg = c.brown_med, bold = true }, config.styles.functions)

  theme["@constructor"] = { fg = c.yellow }
  theme["@operator"] = { fg = c.fg_dim }

  theme["@keyword"] = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme["@keyword.function"] = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme["@keyword.operator"] = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme["@keyword.return"] = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)

  theme["@conditional"] = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme["@repeat"] = vim.tbl_extend("force", { fg = c.purple }, config.styles.keywords)
  theme["@exception"] = { fg = c.red }

  theme["@type.tag.css"] = { fg = c.ot } -- this for @type.css
  theme["@type"] = { fg = c.yellow }
  theme["@type.builtin"] = { fg = c.yellow }
  theme["@type.qualifier"] = { fg = c.purple }

  theme["@attribute"] = { fg = c.cyan }
  theme["@property"] = { fg = c.fg }


  -- @type.css links to @type   priority: 100   language: css
  -- @attribute.css links to @attribute   priority: 100   language: css
  -- @property.class.css links to @property   priority: 100   language: css
  theme["@tag.css"] = { fg = c.ot, bold = true, italic = true }
  theme["@attribute.css"] = { fg = c.ot, bold = true } --  and this for @attribute.css
  theme["@property.class.css"] = {}


  theme["@tag"] = { fg = c.brown_med }
  theme["@tag.attribute"] = { fg = c.fg_dim }
  theme["@tag.delimiter"] = { fg = c.gray }

  return theme
end

return M
