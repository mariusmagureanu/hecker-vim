local LEADER = ","
local THEME = "ayu-mirage"
local LAZY_THEME = "desert"
local LAZY_PATH = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local LAZY_REPO = "https://github.com/folke/lazy.nvim.git"

vim.g.mapleader = LEADER
vim.opt.rtp:prepend(LAZY_PATH)

if not (vim.uv or vim.loop).fs_stat(LAZY_PATH) then
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", LAZY_REPO, LAZY_PATH })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit ..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

require("lazy").setup({
  spec = {
    { import = "hecker.plugins" },
  },
  install = { colorscheme = { LAZY_THEME } },
  checker = { enabled = true },
})

vim.cmd.colorscheme(THEME)
