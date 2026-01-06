<div align="center">
      <h1> <img src="https://github.com/user-attachments/assets/aff692d3-04a0-4215-aa62-48ebcd7a3d8c" width="80px"><br/>terracotta.nvim</h1>
     </div>

</p>
Terracotta is a type of clay material that is brownish‑red or reddish‑orange in color and is made by firing clay at a relatively low temperature, crafted to feel intuitive and comfortable for your eyes.

<img width="1918" height="1060" alt="image" src="https://github.com/user-attachments/assets/8fe7dfd5-7810-491d-92c0-d0b013c95bf3" />


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
  border_style = "rounded",
  
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


## License

MIT License - see [LICENSE](LICENSE) file for details


