-- Line number settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Cursor line settings
vim.wo.cursorline = true

-- Searching settings
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Tab and space display settings
vim.opt.list = true
vim.opt.listchars = { tab = ">-", trail = "-" }

-- Tab indent settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Window location
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Import modules
require("config.lazy")
require("config.keymaps")

-- Color scheme
vim.cmd.colorscheme("catppuccin")
