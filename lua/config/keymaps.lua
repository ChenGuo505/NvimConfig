-- Exit insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- Insert mode moving
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Quik moving
vim.keymap.set({ "n", "x", "o" }, "<S-H>", "^")
vim.keymap.set({ "n", "x", "o" }, "<S-L>", "$")

-- Quik comment
vim.keymap.set("n", "<leader>/", "gcc", { desc = "[Nvim] Toggle comment", remap = true })
vim.keymap.set("x", "<leader>/", "gc", { desc = "[Nvim] Toggle comment", remap = true })

-- nvim-tree mapping
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "[NvimTree] NvimTreeToggle" })

-- Window move mappings
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Buffer switch mappings
vim.keymap.set("n", "<leader>[", "<CMD>BufferPrevious<CR>", { desc = "[Buffer] BufferPrevious" })
vim.keymap.set("n", "<leader>]", "<CMD>BufferNext<CR>", { desc = "[Buffer] BufferNext" })
vim.keymap.set("n", "<leader>1", "<CMD>BufferGoto 1<CR>", { desc = "[Buffer] BufferGoto 1" })
vim.keymap.set("n", "<leader>2", "<CMD>BufferGoto 2<CR>", { desc = "[Buffer] BufferGoto 2" })
vim.keymap.set("n", "<leader>3", "<CMD>BufferGoto 3<CR>", { desc = "[Buffer] BufferGoto 3" })
vim.keymap.set("n", "<leader>4", "<CMD>BufferGoto 4<CR>", { desc = "[Buffer] BufferGoto 4" })
vim.keymap.set("n", "<leader>5", "<CMD>BufferGoto 5<CR>", { desc = "[Buffer] BufferGoto 5" })
vim.keymap.set("n", "<leader>6", "<CMD>BufferGoto 6<CR>", { desc = "[Buffer] BufferGoto 6" })
vim.keymap.set("n", "<leader>7", "<CMD>BufferGoto 7<CR>", { desc = "[Buffer] BufferGoto 7" })
vim.keymap.set("n", "<leader>8", "<CMD>BufferGoto 8<CR>", { desc = "[Buffer] BufferGoto 8" })
vim.keymap.set("n", "<leader>9", "<CMD>BufferGoto 9<CR>", { desc = "[Buffer] BufferGoto 9" })
vim.keymap.set("n", "<leader>ww", "<CMD>BufferClose<CR>", { desc = "[Buffer] BufferClose" })
