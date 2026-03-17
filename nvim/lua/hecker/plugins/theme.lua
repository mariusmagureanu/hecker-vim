return {

	{ "Shatur/neovim-ayu", lazy = false },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{
		"everviolet/nvim",
		name = "evergarden",
		priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
		opts = {
			theme = {
				variant = "fall", -- 'winter'|'fall'|'spring'|'summer'
				accent = "green",
			},
			editor = {
				transparent_background = false,
				sign = { color = "none" },
				float = {
					color = "mantle",
					solid_border = false,
				},
				completion = {
					color = "surface0",
				},
			},
		},
	},
	{
		"thesimonho/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	{
		"vague-theme/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other plugins
		config = function()
			-- NOTE: you do not need to call setup if you don't want to.
			require("vague").setup({
				-- optional configuration here
			})
			vim.cmd("colorscheme vague")
		end,
	},
}
