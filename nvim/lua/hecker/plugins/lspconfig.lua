return {

	{
		"neovim/nvim-lspconfig",

		lazy = false,
		dependencies = {
			{
				"saghen/blink.cmp",

				dependencies = "rafamadriz/friendly-snippets",
				lazy = false,
				version = "*",
				event = { "InsertEnter", "CmdlineEnter" },
				opts = {
					keymap = { preset = "enter" },

					fuzzy = { prebuilt_binaries = { download = true } },

					appearance = {
						use_nvim_cmp_as_default = true,
						nerd_font_variant = "mono",
					},

					signature = { enabled = true, window = { border = "rounded" } },

					completion = {
						accept = { auto_brackets = { enabled = true } },
						documentation = { auto_show = true, auto_show_delay_ms = 0, window = { border = "rounded" } },
						ghost_text = { enabled = false },
						trigger = { prefetch_on_insert = true },
						menu = {
							border = "rounded",
							draw = {
								treesitter = { "lsp" },
								columns = {
									{ "label", "label_description", gap = 1 },
									{ "kind_icon", "kind", gap = 1 },
								},
								components = {
									label = {
										text = function(ctx)
											return require("colorful-menu").blink_components_text(ctx)
										end,
										highlight = function(ctx)
											return require("colorful-menu").blink_components_highlight(ctx)
										end,
									},
								},
							},
						},
					},

					cmdline = {
						enabled = false,
					},

					sources = {
						default = { "lazydev", "lsp", "path", "snippets", "buffer" },
						providers = {
							lazydev = {
								name = "LazyDev",
								module = "lazydev.integrations.blink",
								score_offset = 100,
							},
						},
					},
				},
				opts_extend = { "sources.default" },
			},

			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},

		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			vim.lsp.config("*", { capabilities = capabilities })
			vim.lsp.enable({ "lua_ls", "terraformls", "gopls", "bashls", "pyright", "clangd" })
		end,
	},
}
