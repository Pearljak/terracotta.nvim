
<!-- panvimdoc-ignore-start -->

<h3 align="center">
    Terracotta Colorscheme
</h3>

<p align="center">
    <a href="https://github.com/Pearljak/terracotta.nvim/stargazers"><img src="https://img.shields.io/github/stars/Pearljak?colorA=D2691E&colorB=F5DEB3&logo=github&style=for-the-badge"></a>
    <a href="https://github.com/Pearljak?tab=followers"><img src="https://img.shields.io/badge/Follow_on_GitHub-Pearljak-181717?style=for-the-badge&logo=github&logoColor=white"></a>
</p>

A warm, earthy color scheme for Neovim inspired by terracotta pottery that is insightful and comfortable for the eyes.

<img width="906" height="967" alt="image" src="https://github.com/user-attachments/assets/932ae14b-d7e7-47a0-88b1-78fb34f5b43b" />

<!-- panvimdoc-ignore-end -->

## Installation


### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Pearljak/terracotta.nvim",
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
  "Pearljak/terracotta.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('terracotta').setup({
      styles = {
        strings = { italic = true },
        keywords = { bold = true },
      }
    })
    vim.cmd([[colorscheme terracotta]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "Pearljak/terracotta.nvim",
  config = function()
    -- Optional: configure before loading
    -- require('terracotta').setup({ ... })
    vim.cmd([[colorscheme terracotta]])
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Pearljak/terracotta.nvim'
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

### Optional:

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


