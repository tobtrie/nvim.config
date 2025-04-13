return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('telescope').setup {
                pickers = {
                },
                extensions = {
                }
            }

            vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)

            -- Find files
            vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
            require "config.telescope.multigrep".setup()

            -- Find in nvim config
            vim.keymap.set("n", "<space>en", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                }
            end)
            vim.keymap.set("n", "<space>ep", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
                }
            end)

            -- Git
            -- vim.keymap.set("n", "<leader>gs", require('telescope.builtin').git_status)
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
            vim.keymap.set("n", "<leader>gbc", require('telescope.builtin').git_bcommits)
            vim.keymap.set("n", "<leader>gc", require('telescope.builtin').git_commits)
            vim.keymap.set("n", "<leader>gff", require('telescope.builtin').git_files)
        end
    }
}
