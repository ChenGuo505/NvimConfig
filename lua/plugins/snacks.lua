return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		explorer = { enabled = false },
		picker = { enabled = false },
		notifier = { enabled = true },
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		lazygit = {
			enabled = true,
			configure = false,
		},
		terminal = { enabled = true },
		styles = {
			terminal = {
				relative = "editor",
				border = "rounded",
				position = "float",
				backdrop = 60,
				height = 0.9,
				width = 0.9,
				zindex = 50,
			},
		},
	},

	keys = {
		-- terminal
		{ "<A-i>",       function() require("snacks").terminal() end,        desc = "[Snacks] Toggle terminal", mode = { "n", "t" } },
		-- git
		{ "<C-g>",       function() require("snacks").lazygit() end,         desc = "[Snacks] Lazygit" },
		{ "<leader>ggl", function() require("snacks").picker.git_log() end,  desc = "[Snacks] Git log" },
		{ "<leader>ggd", function() require("snacks").picker.git_diff() end, desc = "[Snacks] Git diff" },
		{ "<leader>ggb", function() require("snacks").git.blame_line() end,  desc = "[Snacks] Git blame line" },
		{ "<leader>ggB", function() require("snacks").gitbrowse() end,       desc = "[Snacks] Git browse" },
	}
}
