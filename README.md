# One Neovim Theme

An Atom One inspired dark and light colorscheme for Neovim.

## Screenshots

Dark theme

![dark theme](assets/dark.png)

Light theme

![light theme](assets/light.png)

### Getting Started

#### Packer

```lua
use {
    'disrupted/one.nvim',
    config = function()
        require('one').colorscheme()
    end,
}
```
