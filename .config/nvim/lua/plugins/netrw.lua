return {
	"prichrd/netrw.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
    -- Load whenever we toggle Netrw
	event = "BufEnter */*",
    -- Load immediately if we opened nvim in a directory
	config = function()
        -- Note this global, we will be using it later!
		START_DIR = vim.fn.getcwd()
		require("netrw").setup()
	end,
}
