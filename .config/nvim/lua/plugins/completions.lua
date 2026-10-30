return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"saghen/blink.lib",
			-- optional: provides snippets for the snippet source
			"rafamadriz/friendly-snippets",
			"L3MON4D3/LuaSnip",
		},
		build = function()
			-- build the fuzzy matcher, optionally add a timeout to `pwait(timeout_ms)`
			-- you can use `gb` in `:Lazy` to rebuild the plugin as needed
			require("blink.cmp").build():pwait()
		end,

		opts = {
			-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
			-- 'super-tab' for mappings similar to vscode (tab to accept)
			-- 'enter' for enter to accept
			-- 'none' for no mappings
			--
			-- All presets have the following mappings:
			-- C-space: Open menu or open docs if already open
			-- C-n/C-p or Up/Down: Select next/previous item
			-- C-e: Hide menu
			-- C-k: Toggle signature help (if signature.enabled = true)
			--
			-- See :h blink-cmp-config-keymap for defining your own keymap
			keymap = { preset = "super-tab" },
			completion = { documentation = { auto_show = false } },
			snippets = { preset = "luasnip" },
			sources = { default = { "lsp", "path", "snippets", "buffer" } },
			fuzzy = { implementation = "lua" },
		},
	},
}
