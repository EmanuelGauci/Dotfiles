-- Rename current file
vim.keymap.set('n', '<leader>pr', function()
  local old_name = vim.fn.expand('%')
  local new_name = vim.fn.input('New file name: ', old_name)
  if new_name ~= '' and new_name ~= old_name then
    vim.cmd('saveas ' .. new_name)
    vim.fn.delete(old_name)
    print('File renamed to: ' .. new_name)
  end
end, { desc = 'Rename current file' })

-- Copy file path variations
vim.keymap.set('n', '<leader>pc', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  print('Full path: ' .. path)
end, { desc = 'Copy full file path' })

