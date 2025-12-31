return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {},
	keys = {
		{ "<leader>f", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "[Flash] Jump" },
		{ "<leader>F", mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "[Flash] treesitter" },
		{ "<leader>S", mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "[Flash] treesitter search" },
		{ "<c-f>",     mode = { "c" },           function() require("flash").toggle() end,            desc = "[Flash] Toggle flash search" },
	},
}
