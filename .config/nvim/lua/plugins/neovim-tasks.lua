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
        vim.keymap.set("n", "<leader>tt", "<cmd>Task set_module_param cmake target<cr>")
        vim.keymap.set("n", "<leader>tc", "<cmd>Task start cmake configure<cr>")
        vim.keymap.set("n", "<leader>tr", "<cmd>Task start cmake run<cr>")
        vim.keymap.set("n", "<leader>td", "<cmd>Task start cmake debug<cr>")
        vim.keymap.set("n", "<leader>tra", "<cmd>Task set_task_param start cmake run<cr>")
    end
}
