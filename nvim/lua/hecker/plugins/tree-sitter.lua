return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"rust",
			"python",
			"docker",
		},

		ignore_install = {},
		modules = {},
		sync_install = false,
		autotag = { enable = true },
		auto_install = true,

		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	},
}
