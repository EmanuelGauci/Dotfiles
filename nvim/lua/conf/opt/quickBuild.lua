vim.keymap.set("n", "<leader>b", function()
  local root = vim.fn.getcwd()
  local build_script = root .. "/build.sh"

  if vim.fn.filereadable(build_script) ~= 1 then
    vim.notify("No build.sh found in " .. root, vim.log.levels.WARN)
    return
  end

  vim.cmd("botright split")
  vim.cmd("resize 15")

  local terminal_buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_win_set_buf(0, terminal_buf)

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
