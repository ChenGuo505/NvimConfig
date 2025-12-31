return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },

	version = '1.*',
	opts = {
		keymap = { preset = 'super-tab' },

		appearance = {
			nerd_font_variant = 'normal'
		},

		completion = {
			accept = { auto_brackets = { enabled = true } },
			menu = {
				border = "rounded"
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = {
					border = "rounded"
				}
			}
		},

		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}
