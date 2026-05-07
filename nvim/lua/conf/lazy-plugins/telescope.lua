return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-project.nvim",
    },

    config = function()
        require('telescope').setup({})
        require('telescope').load_extension('project')

        local builtin = require('telescope.builtin')
        vim.deprecate = function() end
    end
}

