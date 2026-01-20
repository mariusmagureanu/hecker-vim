return {

  { "chriskempson/base16-vim",        lazy = false },

  { "morhetz/gruvbox",                lazy = false },

  { "HiPhish/rainbow-delimiters.nvim" },

  { --* Makes hover window prettier *--
    "Fildo7525/pretty_hover",
    opts = true,
    keys = {
      {
        "K",
        function()
          require("pretty_hover").hover()
        end,
        desc = "Hover",
      },
    },
  },

  { --* Beautiful markdown previewer *--
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    opts = { -- Do not render text on the line you are on
      preview = {
        hybrid_modes = { "n" },
        callbacks = {
          on_enable = function(_, win)
            vim.wo[win].conceallevel = 2
            vim.wo[win].concealcursor = "c"
          end,
        },
      },
    },
  },

  { --* toggle booleans, increment date & months via <C-a> & <C-x> *--
    "nat-418/boole.nvim",
    keys = { "<C-a>", "<C-x>" },
    opts = { mappings = { increment = "<C-a>", decrement = "<C-x>" } },
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  {
    "preservim/tagbar",
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}
