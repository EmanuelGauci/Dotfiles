return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            -- Diagnostics
            { "gl", function() vim.diagnostic.open_float() end, desc = "Open diagnostics in float" },

            -- Telescope
            { "<leader>f", group = "Find" },
            { "<leader>ff", desc = "Find files" },
            { "<leader>fg", desc = "Live grep" },
            { "<leader>fb", desc = "List buffers" },
            { "<leader>fh", desc = "Search help tags" },
            { "<leader>ps", desc = "Projects" },

            -- Harpoon 
            { "<leader>a", desc = "Add to Harpoon" },
            { "<leader>e", desc = "Toggle Harpoon" },
            { "<leader>h", desc = "Harpoon 1" },
            { "<leader>j", desc = "Harpoon 2" },
            { "<leader>k", desc = "Harpoon 3" },
            { "<leader>l", desc = "Harpoon 4" },

            -- NvimTree
            { "<leader>n", group = "NvimTree" },
            { "<leader>nf", desc = "Find current file" },
            { "<leader>nc", desc = "Collapse tree" },

            -- UndoTree
            { "<leader>u", desc = "Toggle UndoTree" },

            -- Floating terminal
            { "<leader>t", desc = "Toggle floating terminal" },

            -- path utils
            { "<leader>pr", desc = "Path Rename" },
            { "<leader>pc", desc = "Path Copy" },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Local buffer keymaps",
        },
    },
}

