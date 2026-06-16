local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.modifiable = true

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

opt.completeopt = "menuone,noselect"

opt.termguicolors = true

opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.undofile = true
opt.scrolloff = 8

opt.iskeyword:append("-")

-- Disable netrw (using snacks explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = "☭ ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
})

vim.lsp.log.set_level("error")

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action({ apply = true })
end, { desc = "Apply code action" })
