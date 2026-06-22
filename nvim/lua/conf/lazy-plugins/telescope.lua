return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-project.nvim",
    },

    config = function()
        local builtin = require('telescope.builtin')
        require('telescope').setup({})

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({search = vim.fn.input("Grep > ")});
        end)

        require('telescope').load_extension('project')
        vim.keymap.set('n', '<leader>ps', ":lua require 'telescope' .extensions.project.project{}<CR>", {noremap = true, silent = true})




        vim.deprecate = function() end
    end
}
