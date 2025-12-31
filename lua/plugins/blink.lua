return {
	'saghen/blink.cmp',
	dependencies = {
		'rafamadriz/friendly-snippets',
		'fang2hou/blink-copilot',
	},

	version = '1.*',
	opts = {
		keymap = {
			preset = 'super-tab',
			["<A-j>"] = { function(cmp) return cmp.select_next({ auto_insert = false }) end, "fallback", },
			["<A-k>"] = { function(cmp) return cmp.select_prev({ auto_insert = false }) end, "fallback", },
			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },
		},

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
			default = { 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					score_offset = 100,
					async = true,
				},
			}
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}
