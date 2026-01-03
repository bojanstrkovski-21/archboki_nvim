# archboki_dark.nvim

A minimal, dark Neovim colorscheme written in Lua.

## Installation

### With lazy.nvim
```lua
{
  "bojanstrkovski-21/archboki_nvim",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd [[colorscheme archboki_dark]]
  end,
}
```

### Manual
Clone or copy this repo to your `~/.config/nvim/lua/` or any path, and add to your runtime path.

## Usage
After installation, set your colorscheme in your `init.lua`:
```lua
vim.cmd [[colorscheme archboki_dark]]
```

## Screenshots
_Add your screenshots here_

## License
This project is licensed under the Unlicense. See [LICENSE](LICENSE) for details.
