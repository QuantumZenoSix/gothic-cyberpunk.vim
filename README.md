# Gothic-Cyberpunk Theme
Vim colorscheme | A minimalistic gothic theme


## Installation

You can install gothic-cyberpunk via plug adding to your `.vimrc` or `init.vim`:

```
Plug 'QuantumZenoSix/gothic-cyberpunk.vim'
```

Or manually copying:

- (vim)    `colors` -> `~/.vim/colors`
- (neovim) `colors` -> `~/.config/nvim/colors`

<br />

## Settings
Lua
```lua
vim.opt.termguicolors = true

-- Set background to dark
vim.opt.background = 'dark'

-- Enable cursorline highlighting
vim.opt.cursorline = true

-- Hide status in cmdline since it will showin airline
vim.opt.showmode = false

-- Set color scheme
vim.cmd.colorscheme 'gothic-cyberpunk'

```
<br />

Vimscript  
```vimscript
set termguicolors

" Set background to dark
set background=dark

" Enable cursorline highlighting
set cursorline

" Hide status in cmdline since it will show in airline
set noshowmode

" Set color scheme
colorscheme gothic-cyberpunk


```

## Screenshots
![cyberpunk](./screenshots/demo1.png)  
---
