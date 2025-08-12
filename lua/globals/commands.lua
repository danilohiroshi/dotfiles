-- Copy Relative path
vim.api.nvim_create_user_command('CopyRelPath', function()
  vim.fn.setreg('+', vim.fn.expand('%'))
end, {})

vim.api.nvim_create_user_command('OpenRemoteURLAndCopyRelPath', function()
  -- Get the remote origin URL using Git command
  local handle = io.popen('git config --get remote.origin.url', 'r')
  local remote_url = handle:read('*a')
  handle:close()
  
  -- Trim newline or any trailing space
  remote_url = remote_url:gsub('%s+', '')

  if remote_url == '' then
    print('Error: No remote URL found!')
    return
  end

  -- Open the URL in the default browser (adjust for your OS)
  os.execute('xdg-open ' .. remote_url)  -- For Linux
  -- os.execute('open ' .. remote_url)   -- For macOS
  -- os.execute('start ' .. remote_url)  -- For Windows

  -- Copy the current buffer's relative path to the clipboard
  local relative_path = vim.fn.expand('%')
  vim.fn.setreg('+', relative_path)
  print('Copied relative path: ' .. relative_path)
end, {})