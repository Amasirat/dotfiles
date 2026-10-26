vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

vim.keymap.set("n", "<leader>hl", "<cmd>checkhealth vim.lsp<cr>", { desc = "LSP health" })

-- Windowing
vim.keymap.set("n", "<leader>wo", vim.cmd.only,  { desc = "Clear all other windows except the current one" })
vim.keymap.set("n", "<leader>ws", vim.cmd.split, { desc = "Split current window into two" })
vim.keymap.set("n", "<leader>wc", vim.cmd.close, { desc = "Close the current highlighted window" })
