------------------
-- leader 
------------------
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

------------------
-- autopair 
------------------
-- NOTE: make these file type specific later on, this is just a placeholder
vim.keymap.set('i', '(', '()<ESC>hli', { noremap = true, silent = true })
vim.keymap.set('i', '{', '{}<ESC>hli', { noremap = true, silent = true })
vim.keymap.set('i', '[', '[]<ESC>hli', { noremap = true, silent = true })
-- translation of the taditional `inoremap ( ()<ESC>hli`

------------------
-- telescope 
------------------
--<leader>ff = find files
--<leader>fg = live grep
--<leader>fb = telescope buffers
--<leader>fh = telescope help tags

--<leader>ps = project
--<project mode><Ctrl>d = delete project
--<project mode><Ctrl>v = rename project
--<project mode><Ctrl>a = create project (git root)
--<project mode><Ctrl>A = create project (cwd)
-- NOTE: REFERENCE https://deepwiki.com/nvim-telescope/telescope-project.nvim/3-usage-guide


------------------
-- harpoon 
------------------
-- <leader>a = add to end of harpoon list
-- <leader>e = toggle harpoon ui menu
-- <leader>h = harpoon entry 1
-- <leader>j = harpoon entry 2
-- <leader>k = harpoon entry 3
-- <leader>l = harpoon entry 4

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)


------------------
-- undotree 
------------------
--<leader>u = Undo Tree Toggle

------------------
-- file utils 
------------------
--<leader>rr = rename current file
--<leader>pf = copy full file path
--<leader>pr = copy relative file path

------------------
-- floating terminal 
------------------
--<leader>t = toggle floating terminal
--<Esc> in terminal mode = close terminal from terminal mode

