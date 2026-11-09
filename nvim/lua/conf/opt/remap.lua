------------------
-- leader 
------------------
vim.g.mapleader = " "


--vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end,
    {desc="Open Dignostics in Float"})


