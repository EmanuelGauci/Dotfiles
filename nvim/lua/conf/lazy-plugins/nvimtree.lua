return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)
        vim.keymap.set("n", "<leader>nf", vim.cmd.NvimTreeFindFile)
        vim.keymap.set("n", "<leader>nc", vim.cmd.NvimTreeCollapse)

        vim.api.nvim_create_autocmd("TabNewEntered", {
            callback = function()
                require("nvim-tree.api").tree.open()
            end,
        })

        local config = {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
                side = "left",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        }
        require("nvim-tree").setup {}
    end,
}
