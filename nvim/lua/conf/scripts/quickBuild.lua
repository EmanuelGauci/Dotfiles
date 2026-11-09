vim.keymap.set("n", "<leader>b", function()
  local root = vim.fn.getcwd()
  local build_script = root .. "/build.sh"

  if vim.fn.filereadable(build_script) ~= 1 then
    vim.notify("No build.sh found in " .. root, vim.log.levels.WARN)
    return
  end

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local terminal_buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_open_win(terminal_buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  vim.fn.termopen({ "bash", build_script }, {
    cwd = root,
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        vim.notify("Build completed successfully", vim.log.levels.INFO)
      else
        vim.notify("Build failed with exit code " .. exit_code, vim.log.levels.ERROR)
      end
    end,
  })

  vim.cmd("startinsert")
end, {
  desc = "Run build.sh from project root",
})

