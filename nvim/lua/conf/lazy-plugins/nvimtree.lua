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

        local config = {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
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
