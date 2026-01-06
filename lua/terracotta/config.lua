local M = {}

M.defaults = {
  styles = {
    comments = { italic = true },
    functions = {},
    keywords = {},
    variables = {},
    strings = {},
  },
  
  transparent = false,
  dim_inactive = true,
  border_style = "rounded",
  
  plugins = {
    telescope = true,
    nvimtree = true,
    treesitter = true,
    lsp = true,
    cmp = true,
    gitsigns = true,
    bufferline = true,
    indent_blankline = true,
  },
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

function M.get()
  return M.options
end

return M
