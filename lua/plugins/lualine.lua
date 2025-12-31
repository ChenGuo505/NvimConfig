return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		'AndreM222/copilot-lualine',
	},
	opts = {
		options = {
			theme = "catppuccin",
			always_divide_middle = false,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "copilot" },
			lualine_y = { "encoding", "fileformat", "filetype", "progress" },
			lualine_z = { "location" },
		},
	},
}
