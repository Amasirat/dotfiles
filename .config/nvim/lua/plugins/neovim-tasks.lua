return {
    "Shatur/neovim-tasks",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require('tasks').setup({
            default_params = {
                cmake = {
                    cmd = 'cmake',
                    build_type = 'Debug',
                    build_kit = 'default'
                },
            }
        })

        -- CMake Task keymaps
        vim.keymap.set("n", "<leader>tct", "<cmd>Task set_module_param cmake target<cr>")
        vim.keymap.set("n", "<leader>tcc", "<cmd>Task start cmake configure<cr>")
        vim.keymap.set("n", "<leader>tcr", "<cmd>Task start cmake run<cr>")
        vim.keymap.set("n", "<leader>tcd", "<cmd>Task start cmake debug<cr>")
        vim.keymap.set("n", "<leader>tcra", "<cmd>Task set_task_param start cmake run<cr>")
    end
}
