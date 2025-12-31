return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "macchiato",
		integrations = {
			barbar = true,
			blink_cmp = {
				style = 'bordered',
			},
			gitsigns = true,
			mason = true,
			noice = true,
			nvimtree = true
		}
	}
}
