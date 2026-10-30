return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
			vim.keymap.set("n", "<leader>m", vim.cmd.Mason)
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"ts_ls",
					"neocmake",
                    "pyright",
                    "ruff",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("roslyn_ls", {
				razor = { language_server = { cohosting_enabled = true } },
			})
			vim.lsp.enable("roslyn_ls")

			vim.lsp.config("lua_ls", {})
			vim.lsp.enable("lua_ls")

			-- keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, {})
		end,
	},
}
