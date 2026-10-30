return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			-- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		require("nvim-treesitter").install({
			"rust",
			"c",
			"cpp",
			"markdown",
			"html",
			"css",
			"python",
			"javascript",
		})
		vim.opt.foldmethod = "syntax" -- or "indent"
		vim.opt.foldlevelstart = 99 -- start with all folds open

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "python",
			callback = function()
				vim.opt_local.foldmethod = "indent"
				vim.opt_local.foldlevel = 99
			end,
		})
	end,
}
