[![HeckerVim config check](https://github.com/mariusmagureanu/hecker-vim/actions/workflows/nvim.yml/badge.svg)](https://github.com/mariusmagureanu/hecker-vim/actions/workflows/nvim.yml)
[![Neovim](https://img.shields.io/badge/Neovim-%3E%3D0.11-blue)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Lua-latest-purple)](https://lua.org)

---

### HeckerVim

My stripped down Lua-powered Neovim configuration.
Lazy-loaded plugins, Treesitter magic and zero startup surprises.

Built by me for myself!

---

### Setup and prerequisites

HeckerVim requires the following:

* [Neovim](https://neovim.io/)
* Lua 5.1 (preferably, otherwise latest is fine too)
* [ctags](https://github.com/universal-ctags/ctags) - most likely availble through any package manager.
* [luarocks](https://luarocks.org/)

Once all the above are in place, run the following:

```sh
$ git clone git@github.com:mariusmagureanu/hecker-vim.git
$ ln -sf $(pwd)/nvim ~/.config/nvim
```

As you open Neovim, Lazy will automatically start and fetch the configured plugins.

---

### Plugins

The following list contains the main plugins found in HeckerVim.

For a complete overview browse the [plugins](https://github.com/mariusmagureanu/hecker-vim/tree/master/nvim/lua/hecker/plugins) folder in this repository.

* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — Syntax highlighting, incremental parsing, and code-aware features.
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - A file explorer For Neovim.
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — Fuzzy finder and highly extendable search interface.
* [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) — Linting, formatting, and code actions using external tools.
* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — Git integration: signs, hunks, and inline blame.
* [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — Fast and customizable status line.
* [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) — Utility library required by many plugins, including Telescope.
* [colorful-menu](https://github.com/xzbdmw/colorful-menu.nvim) - Reconstructs completion item and applies treesitter highlight queries to produce variable-size highlight ranges.
* [blink.cmp](https://github.com/saghen/blink.cmp) - Code autocomplete capabilities.

---

### Notes

* It's a best practice you run ``:checkhealth`` and fix any issues reported by Neovim.
* The current keymap in HeckerVim is available [here](https://github.com/mariusmagureanu/hecker-vim/blob/master/dox/usage.md).
* If earlier Neovim plugins/setups have been installed before, check and remove the following paths:
  
```sh
config: ~/.config/nvim        → vim.fn.stdpath("config")
data:   ~/.local/share/nvim   → vim.fn.stdpath("data")
state:  ~/.local/state/nvim   → vim.fn.stdpath("state")
cache:  ~/.cache/nvim         → vim.fn.stdpath("cache")
```
