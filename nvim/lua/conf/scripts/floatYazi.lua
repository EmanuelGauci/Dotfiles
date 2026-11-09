vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function open_yazi_popup()
    local original_win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_create_buf(false, true)

    local width = math.floor(vim.o.columns * 0.85)
    local height = math.floor(vim.o.lines * 0.80)
    local win = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        style = "minimal",
        border = "rounded",
    })

    local cwd = vim.fn.getcwd(0, 0)

    vim.fn.termopen({ "yazi", cwd }, {
        cwd = cwd,
        on_exit = function()
            vim.schedule(function()
                if vim.api.nvim_win_is_valid(win) then
                    vim.api.nvim_win_close(win, true)
                end
                if vim.api.nvim_buf_is_valid(buf) then
                    vim.api.nvim_buf_delete(buf, { force = true })
                end
                if vim.api.nvim_win_is_valid(original_win) then
                    vim.api.nvim_set_current_win(original_win)
                end
            end)
        end,
    })

    vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>cd", open_yazi_popup, { desc = "Yazi popup" })
