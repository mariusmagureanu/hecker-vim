### Usage — Snacks Keybindings

This document describes the default keybindings provided by **Snacks** in HeckerVim.
All mappings are designed to be mnemonic, composable, and discoverable.

`<leader>` defaults to `,` unless overridden.

---

### Top Pickers & Explorer

| Key               | Action               |
| ----------------- | -------------------- |
| `<leader><space>` | Smart find files     |
| `<leader>,`       | Switch buffers       |
| `<leader>/`       | Grep (project-wide)  |
| `<leader>:`       | Command history      |
| `<leader>n`       | Notification history |
| `<leader>e`       | File explorer        |

---

### File & Project Navigation

| Key          | Action                 |
| ------------ | ---------------------- |
| `<leader>fb` | Find buffers           |
| `<leader>fc` | Find config files      |
| `<leader>ff` | Find files             |
| `<leader>fg` | Find git-tracked files |
| `<leader>fp` | Projects               |
| `<leader>fr` | Recent files           |

---

### Git

| Key          | Action                 |
| ------------ | ---------------------- |
| `<leader>gb` | Git branches           |
| `<leader>gl` | Git log                |
| `<leader>gL` | Git log (current line) |
| `<leader>gs` | Git status             |
| `<leader>gS` | Git stash              |
| `<leader>gd` | Git diff (hunks)       |
| `<leader>gf` | Git log (current file) |

---

### GitHub

| Key          | Action               |
| ------------ | -------------------- |
| `<leader>gi` | GitHub issues (open) |
| `<leader>gI` | GitHub issues (all)  |
| `<leader>gp` | GitHub PRs (open)    |
| `<leader>gP` | GitHub PRs (all)     |

---

### Grep & Text Search

| Key          | Action                       |
| ------------ | ---------------------------- |
| `<leader>sb` | Buffer lines                 |
| `<leader>sB` | Grep open buffers            |
| `<leader>sg` | Grep                         |
| `<leader>sw` | Grep word / visual selection |

---

### Search & Introspection

| Key          | Action             |
| ------------ | ------------------ |
| `<leader>s"` | Registers          |
| `<leader>s/` | Search history     |
| `<leader>sa` | Autocommands       |
| `<leader>sc` | Command history    |
| `<leader>sC` | Commands           |
| `<leader>sd` | Diagnostics        |
| `<leader>sD` | Buffer diagnostics |
| `<leader>sh` | Help pages         |
| `<leader>sH` | Highlights         |
| `<leader>si` | Icons              |
| `<leader>sj` | Jumps              |
| `<leader>sk` | Keymaps            |
| `<leader>sl` | Location list      |
| `<leader>sm` | Marks              |
| `<leader>sM` | Man pages          |
| `<leader>sp` | Plugin specs       |
| `<leader>sq` | Quickfix list      |
| `<leader>sR` | Resume last picker |
| `<leader>su` | Undo history       |
| `<leader>uC` | Colorschemes       |

---

### LSP

| Key          | Action                |
| ------------ | --------------------- |
| `gd`         | Go to definition      |
| `gD`         | Go to declaration     |
| `gr`         | References            |
| `gI`         | Go to implementation  |
| `gy`         | Go to type definition |
| `gai`        | Incoming calls        |
| `gao`        | Outgoing calls        |
| `<leader>ss` | Document symbols      |
| `<leader>sS` | Workspace symbols     |

---

### UI & Utilities

| Key          | Action                    |
| ------------ | ------------------------- |
| `<leader>z`  | Toggle Zen mode           |
| `<leader>Z`  | Toggle Zoom               |
| `<leader>.`  | Toggle scratch buffer     |
| `<leader>S`  | Select scratch buffer     |
| `<leader>bd` | Delete buffer             |
| `<leader>cR` | Rename file               |
| `<leader>gB` | Git browse                |
| `<leader>gg` | Lazygit                   |
| `<leader>un` | Dismiss all notifications |
| `<C-/>`      | Toggle terminal           |

---

### Notes

- All pickers are powered by **Snacks**
- Most mappings are lazy-loaded
- Visual mode support is enabled where applicable
- Keymaps are intentionally Telescope-compatible for muscle memory
