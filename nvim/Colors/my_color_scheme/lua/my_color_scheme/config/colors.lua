local M = {}

function M.setup()

    local palette = {
        bg_1 = "#0d0b16",
        bg_2 = "#221B40",
        fg_1 = "#C2A0F2",
        fg_2 = "#B1B1B1",

        red = "#A15858",
        green = "#498553",
        blue = "#496E85",
        yellow = "#A6A368",
        purple = "#B276D6",
        cyan = "#58A2A8",
        gray = "#969696",
    }

    -- define highlight groups
    local highlights = {
        Normal = {fg = palette.fg_1, bg = palette.bg_1},
        Comment = {fg = palette.gray, italic = true},
        Keyword = {fg = palette.purple, bold = true},
        String = {fg = palette.green},
        Number = {fg = palette.yellow},
        LineNr = {fg = palette.gray},
        CursorLine = {bg = palette.bg_2},
        StatusLine = {fg = palette.fg_2, bg = palette.bg_2},
        Visual = {bg = palette.blue, fg = palette.bg},
    }


    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

end
return M
