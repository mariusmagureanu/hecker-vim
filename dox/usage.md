### Usage

HeckerVim is built around a small set of composable actions.
Most workflows start with the **leader** key which defaults to `,` ([here](https://github.com/mariusmagureanu/hecker-vim/blob/master/nvim/lua/hecker/lazy.lua#L1)).

The keymap described below is implemented [here](https://github.com/mariusmagureanu/hecker-vim/blob/master/nvim/lua/hecker/keymap.lua).

---

### Navigation & Search (Telescope)

Fast, fuzzy, and scoped to your current working directory.

- `<leader>`ff — Find files (respects .gitignore)

- `<leader>`fs — Live grep (search as you type)

- `<leader>`fc — Search for word under cursor

- `<leader>`fb — List open buffers

- `<leader>`fh — Browse Neovim help

Use this for most navigation. If you’re reaching for ``:ls`` or ``:grep``, Telescope probably does it better.

---

### Git workflows (Telescope + Git)

All Git interactions stay inside Neovim.

- `<leader>`gc — Browse all git commits

- `<leader>`gfc — Browse commits for the current file

- `<leader>`gb — List and checkout branches

- `<leader>`gs — Git status with diff preview

Useful for quick context switching, reviews, and history inspection without leaving the editor.

---

### File Tree

- `<leader>`e — Toggle file explorer

Use this when you want a persistent project view instead of fuzzy navigation.

---

### LSP actions (Lspsaga)

Language intelligence with a clean UI.

Code navigation

- gd — Go to definition

- gD — Peek definition (without leaving context)

- gh — Finder (definitions, references, implementations)

**Refactoring & actions**

- gr — Rename symbol

- gR — Rename symbol across project

- `<leader>`ca — Code actions (normal or visual mode)

**Call hierarchy & structure**

- `<leader>`ci — Incoming calls

- `<leader>`co — Outgoing calls

- `<leader>`o — File outline (symbols)

---

Lspsaga wraps Neovim’s built-in LSP with floating views and interactive panels. No magic, just better ergonomics.

### Symbols & Structure (Tagbar)

- `<leader>`tb — Toggle Tagbar

Displays a structural outline of the current file (functions, types, methods). Useful for large files or unfamiliar codebases.

---

### Formatting

Formatting happens automatically on save:

On `:write`, the active LSP formats the buffer synchronously.
