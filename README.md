<div align="center">
      <h1> <img src="blank" width="80px"><br/>terracotta.nvim</h1>
     </div>
<p align="center">
<a href="#"><img alt="Made with Lua" src="https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?=for-the-badge&logo=lua" style="vertical-align:center" /></a>
</p>


Terracotta is a type of clay material that is brownish‑red or reddish‑orange in color and is made by firing clay at a relatively low temperature, crafted to feel intuitive and comfortable for your eyes.
## Features

- Full Treesitter support
- LSP semantic highlighting
- Popular plugin integrations:
  - Telescope
  - Nvim-tree
  - Lualine
  - nvim-cmp
  - Gitsigns
  - Bufferline
  - Indent-blankline
- Carefully crafted colors for better readability
- Distinct visual modes

## Installation




### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Perljak/terracotta.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme terracotta]])
  end,
}
```

**With customization:**
```lua
{
  "Perljak/terracotta.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('terracotta').setup({
      styles = {
        functions = { bold = true, italic = true },
      }
    })
    vim.cmd([[colorscheme terracotta]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "Perljak/terracotta.nvim",
  config = function()
    -- Optional: configure before loading
    -- require('terracotta').setup({ ... })
    vim.cmd([[colorscheme terracotta]])
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Perljak/terracotta.nvim'
```

Then in your `init.lua`:

```lua

-- require('terracotta').setup({ ... })

colorscheme terracotta
```

##  Usage

### Quick Start

```lua
vim.cmd([[colorscheme terracotta]])
```

That's it! The theme works great out of the box.

### Optional: Customize with Configuration

```lua
require('terracotta').setup({
  styles = {
    functions = { bold = true },
    keywords = { italic = true },
  },
})

vim.cmd([[colorscheme terracotta]])
```

### Full Configuration Options:
> **Note:** Configuration is completely optional. The theme works perfectly without any setup.

> **Note:** You can customize colors by modifying `lua/terracotta/palette.lua` or override specific highlights after loading the theme.

```lua
require('terracotta').setup({
  styles = {
    comments = { italic = true },  -- default
    functions = {},                
    keywords = {},                 
    variables = {},                 
    strings = { italic = true },            
  },
  
  transparent = false,              -- default: solid background
  dim_inactive = true,              -- default: dim inactive windows
  
  plugins = {
    -- All enabled by default, set to false to disable
    telescope = true,
    nvimtree = true,
    treesitter = true,
    lsp = true,
    cmp = true,
    gitsigns = true,
    bufferline = true,
    indent_blankline = true,
  },
})
```

### Configuration Options

**Styles:** Customize how different syntax elements appear
- Available style options: `bold`, `italic`, `underline`

**Theme Options:**
- `transparent` - Transparent background (default: `false`)
- `dim_inactive` - Dim inactive windows (default: `true`)

**Plugin Integrations:** Enable/disable specific plugins (all `true` by default)

### Configuration Examples

**No italic comments:**
```lua
require('terracotta').setup({
  styles = {
    comments = {},  -- Remove default italic
  }
})
```

**Bold functions + italic keywords:**
```lua
require('terracotta').setup({
  styles = {
    functions = { bold = true },
    keywords = { italic = true },
  }
})
```

**Transparent background:**
```lua
require('terracotta').setup({
  transparent = true,
})
```

### Lualine

```lua
require('lualine').setup {
  options = {
    theme = 'terracotta'
  }
}
```
## Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Add support for more plugins
- Improve documentation

## License

MIT License - see [LICENSE](LICENSE) file for details

