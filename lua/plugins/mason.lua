return {
	"mason-org/mason-lspconfig.nvim",
	opts = { ensure_installed = { "lua_ls" } },
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {}
		},
		{
			"neovim/nvim-lspconfig",
			opts = {},
			config = function()
				vim.diagnostic.config({
					underline = false,
					signs = false,
					update_in_insert = false,
					virtual_text = { spacing = 2, prefix = "●" },
					severity_sort = true,
					float = {
						border = "rounded",
					},
				})
				vim.api.nvim_create_autocmd("LspAttach", {
					group = vim.api.nvim_create_augroup("UserLspConfig", {}),
					callback = function(ev)
						vim.keymap.set("n", "K", vim.lsp.buf.hover) -- configured in "nvim-ufo" plugin
						vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
							buffer = ev.buf,
							desc = "[LSP] Show diagnostic",
						})
						vim.keymap.set("n", "<leader>gk", vim.lsp.buf.signature_help, { desc = "[LSP] Signature help" })
						vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder,
							{ desc = "[LSP] Add workspace folder" })
						vim.keymap.set(
							"n",
							"<leader>wr",
							vim.lsp.buf.remove_workspace_folder,
							{ desc = "[LSP] Remove workspace folder" }
						)
						vim.keymap.set("n", "<leader>wl", function()
							print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
						end, { desc = "[LSP] List workspace folders" })
						vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = ev.buf, desc = "[LSP] Rename" })
					end,
				})
			end
		},
	},
}
