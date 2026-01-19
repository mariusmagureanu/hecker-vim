[![HeckerVim config check](https://github.com/mariusmagureanu/hecker-vim/actions/workflows/nvim.yml/badge.svg)](https://github.com/mariusmagureanu/hecker-vim/actions/workflows/nvim.yml)
[![Neovim](https://img.shields.io/badge/Neovim-%3E%3D0.11-blue)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Lua-latest-purple)](https://github.com/<kua-repo>)

---

### HeckerVim

My stripped down Lua-powered Neovim configuration.
Lazy-loaded plugins, Treesitter magic and zero startup surprises.

Built by me for myself!

---

### Usage

```sh
$ git clone git@github.com:mariusmagureanu/hecker-vim.git
$ ln -sf $(pwd)/nvim ~/.config/nvim
$ nvim --headless "+Lazy! sync" "+qa"
```

---

### Plugins

* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — Syntax highlighting, incremental parsing, and code-aware features.

* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — Fuzzy finder and highly extendable search interface.

* [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) — Linting, formatting, and code actions using external tools.

* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — Git integration: signs, hunks, and inline blame.

* [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — Fast and customizable status line.

* [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) — Utility library required by many plugins, including Telescope.
