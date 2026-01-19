return {
  {
    "nvimtools/none-ls.nvim",
    lazy = false,
    config = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting

      null_ls.setup({

        sources = {
          formatting.stylua, -- lua formatter
          formatting.gofmt, -- go formatter
          formatting.black,
          formatting.prettier,
          formatting.yamlfmt,
          formatting.shfmt,
          formatting.terraform_fmt,
        },
      })
    end,
  },
}
