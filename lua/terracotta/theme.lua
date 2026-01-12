local palette = require("terracotta.palette")
local c = palette.colors
local tbl_extend = vim.tbl_extend

local M = {}

-- Helper function to reduce duplication
local function extend_style(base_fg, style_key, config)
    return tbl_extend("force", { fg = base_fg }, config.styles[style_key])
end

function M.setup()
    local config = require("terracotta.config").get()
    local theme = {}

    -- Border configuration
    local border = config.border_style == "rounded" and "rounded" or "single"
    theme.FloatBorder = { fg = c.brown_med }

    -- Normal modes
    theme.Normal = { fg = c.fg, bg = c.bg }
    theme.NormalFloat = { fg = c.fg, bg = c.bg_light }
    theme.NormalNC = config.dim_inactive and { fg = c.fg_dim, bg = c.bg } or { fg = c.fg, bg = c.bg }

    -- Syntax groups organized by category
    local syntax_groups = {
        -- Comments
        Comment = extend_style(c.gray, "comments", config),
        SpecialComment = { fg = c.gray_light, italic = true },

        -- Constants
        Constant = { fg = c.orange },
        String = extend_style(c.green, "strings", config),
        Character = { fg = c.green },
        Number = { fg = c.orange },
        Boolean = { fg = c.orange },
        Float = { fg = c.orange },

        -- Identifiers and functions
        Identifier = extend_style(c.fg, "variables", config),
        Function = extend_style(c.brown_med, "functions", config),

        -- Statements and keywords
        Statement = extend_style(c.purple, "keywords", config),
        Conditional = extend_style(c.purple, "keywords", config),
        Repeat = extend_style(c.purple, "keywords", config),
        Label = extend_style(c.purple, "keywords", config),
        Keyword = extend_style(c.purple, "keywords", config),
        Operator = { fg = c.fg_dim },
        Exception = { fg = c.red },

        -- Preprocessor
        PreProc = { fg = c.cyan },
        Include = { fg = c.purple },
        Define = { fg = c.purple },
        Macro = { fg = c.cyan },
        PreCondit = { fg = c.cyan },

        -- Types
        Type = { fg = c.yellow },
        StorageClass = { fg = c.purple },
        Structure = { fg = c.yellow },
        Typedef = { fg = c.yellow },

        -- Special
        Special = { fg = c.blue },
        SpecialChar = { fg = c.orange },
        Tag = { fg = c.brown_med },
        Delimiter = { fg = c.fg_dim },
        Debug = { fg = c.red },

        -- Text
        Underlined = { underline = true },
        Ignore = { fg = c.gray },
        Error = { fg = c.red, bold = true },
        Todo = { fg = c.bg, bg = c.yellow, bold = true },
    }

    -- Apply syntax groups to theme
    for group, value in pairs(syntax_groups) do
        theme[group] = value
    end

    -- Cursor and line numbers
    theme.Cursor = { fg = c.bg, bg = c.fg }
    theme.CursorLine = { bg = c.bg_light }
    theme.CursorColumn = { bg = c.bg_light }
    theme.ColorColumn = { bg = c.bg_light }
    theme.CursorLineNr = { fg = c.brown_med, bold = true }
    theme.LineNr = { fg = c.gray }

    -- Columns
    theme.SignColumn = { bg = c.bg }
    theme.FoldColumn = { fg = c.gray, bg = c.bg }
    theme.Folded = { fg = c.gray, bg = c.bg_light }

    -- Visual modes and search
    local visual_bg = c.bg_lighter
    theme.Visual = { bg = visual_bg }
    theme.VisualNOS = { bg = visual_bg }
    theme.Search = { fg = c.bg, bg = c.yellow }
    theme.IncSearch = { fg = c.bg, bg = c.orange }
    theme.CurSearch = { fg = c.bg, bg = c.orange }

    -- Popup menu
    theme.Pmenu = { fg = c.fg, bg = c.bg_light }
    theme.PmenuSel = { fg = c.bg, bg = c.brown_med }
    theme.PmenuSbar = { bg = c.bg_lighter }
    theme.PmenuThumb = { bg = c.brown_dark }

    -- Status and tab lines
    theme.StatusLine = { fg = c.fg, bg = c.bg_light }
    theme.StatusLineNC = { fg = c.gray, bg = c.bg_light }
    theme.TabLine = { fg = c.gray, bg = c.bg_light }
    theme.TabLineFill = { bg = c.bg_light }
    theme.TabLineSel = { fg = c.fg, bg = c.bg }

    -- UI elements
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

    -- Text highlighting
    theme.MatchParen = { fg = c.orange, bold = true }
    theme.NonText = { fg = c.gray }
    theme.SpecialKey = { fg = c.gray }
    theme.Whitespace = { fg = c.gray }

    -- Diff
    local darken = palette.darken
    theme.DiffAdd = { fg = c.green, bg = darken(c.green, 0.8) }
    theme.DiffChange = { fg = c.blue, bg = darken(c.blue, 0.8) }
    theme.DiffDelete = { fg = c.red, bg = darken(c.red, 0.8) }
    theme.DiffText = { fg = c.yellow, bg = darken(c.yellow, 0.7) }

    -- Spell checking
    local undercurl = { undercurl = true }
    theme.SpellBad = tbl_extend("force", { sp = c.red }, undercurl)
    theme.SpellCap = tbl_extend("force", { sp = c.blue }, undercurl)
    theme.SpellLocal = tbl_extend("force", { sp = c.cyan }, undercurl)
    theme.SpellRare = tbl_extend("force", { sp = c.purple }, undercurl)

    -- Diagnostics
    theme.DiagnosticError = { fg = c.red }
    theme.DiagnosticWarn = { fg = c.yellow }
    theme.DiagnosticInfo = { fg = c.blue }
    theme.DiagnosticHint = { fg = c.cyan }

    local diagnostic_undercurl = { undercurl = true }
    theme.DiagnosticUnderlineError = tbl_extend("force", { sp = c.red }, diagnostic_undercurl)
    theme.DiagnosticUnderlineWarn = tbl_extend("force", { sp = c.yellow }, diagnostic_undercurl)
    theme.DiagnosticUnderlineInfo = tbl_extend("force", { sp = c.blue }, diagnostic_undercurl)
    theme.DiagnosticUnderlineHint = tbl_extend("force", { sp = c.cyan }, diagnostic_undercurl)

    -- Treesitter groups (organized by type)
    local treesitter = {
        -- Variables
        ["@variable"] = extend_style(c.fg, "variables", config),
        ["@variable.builtin"] = { fg = c.orange },
        ["@variable.parameter"] = { fg = c.fg_dim },
        ["@variable.member"] = extend_style(c.fg, "variables", config),

        -- Constants
        ["@constant"] = { fg = c.orange },
        ["@constant.builtin"] = { fg = c.orange },
        ["@constant.macro"] = { fg = c.cyan },

        -- Modules and labels
        ["@module"] = { fg = c.cyan },
        ["@label"] = { fg = c.purple },

        -- Strings
        ["@string"] = extend_style(c.green, "strings", config),
        ["@string.regex"] = { fg = c.orange },
        ["@string.escape"] = { fg = c.orange },
        ["@character"] = { fg = c.green },

        -- Numbers
        ["@number"] = { fg = c.orange },
        ["@boolean"] = { fg = c.orange },
        ["@float"] = { fg = c.orange },

        -- Functions
        ["@function"] = extend_style(c.brown_med, "functions", config),
        ["@function.builtin"] = extend_style(c.brown_med, "functions", config),
        ["@function.macro"] = { fg = c.cyan },
        ["@function.method"] = extend_style(c.brown_med, "functions", config),

        -- Constructors and operators
        ["@constructor"] = { fg = c.yellow },
        ["@operator"] = { fg = c.fg_dim },

        -- Keywords
        ["@keyword"] = extend_style(c.purple, "keywords", config),
        ["@keyword.function"] = extend_style(c.purple, "keywords", config),
        ["@keyword.operator"] = extend_style(c.purple, "keywords", config),
        ["@keyword.return"] = extend_style(c.purple, "keywords", config),
        ["@conditional"] = extend_style(c.purple, "keywords", config),
        ["@repeat"] = extend_style(c.purple, "keywords", config),
        ["@exception"] = { fg = c.red },

        -- Types
        ["@type.tag.css"] = { fg = c.ot },
        ["@type"] = { fg = c.yellow },
        ["@type.builtin"] = { fg = c.yellow },
        ["@type.qualifier"] = { fg = c.purple },

        -- Properties and attributes
        ["@attribute"] = { fg = c.cyan },
        ["@property"] = { fg = c.fg },

        -- CSS specific
        ["@tag.css"] = { fg = c.ot, bold = true, italic = true },
        ["@attribute.css"] = { fg = c.ot, bold = true },
        ["@property.class.css"] = {},

        -- Tags
        ["@tag"] = { fg = c.brown_med },
        ["@tag.attribute"] = { fg = c.fg_dim },
        ["@tag.delimiter"] = { fg = c.gray },
    }

    -- Apply treesitter groups
    for group, value in pairs(treesitter) do
        theme[group] = value
    end

    return theme
end

return M
