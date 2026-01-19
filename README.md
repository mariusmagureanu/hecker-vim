[![HeckerVim config check](https://github.com/mariusmagureanu/hecker-vim/actions/workflows/nvim.yml/badge.svg)](https://github.com/mariusmagureanu/hecker-vim/actions/workflows/nvim.yml)
[![Neovim](https://img.shields.io/badge/Neovim-%3E%3D0.11-blue)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Lua-latest-purple)](https://github.com/<kua-repo>)

---

### HeckerVim

My stripped down, turbocharged, and totally Lua-powered Neovim configuration.
Lazy-loaded plugins, Treesitter magic, and zero startup surprises.

Built by me for myself!

### Usage

```sh
$ git clone git@github.com:mariusmagureanu/hecker-vim.git
$ ln -sf $(pwd)/nvim ~/.config/nvim
$ nvim --headless "+Lazy! sync" "+qa"
```
