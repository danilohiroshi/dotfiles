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
end, {})

vim.api.nvim_create_user_command('GetSSMParameter', function(args)
  local parameter_name = args.args
  if parameter_name == '' then
    print('Error: No parameter name provided!')
    return
  end

  -- Execute AWS CLI command with dynamic parameter name
  local command = 'aws ssm get-parameters --with-decryption --names=' .. parameter_name
  local handle = io.popen(command, 'r')
  local result = handle:read('*a')
  handle:close()

  -- Output the result in Neovim
  print(result)
end, {
  nargs = 1,  -- Specifies that the command takes one argument
  complete = 'file',  -- Optional: Autocomplete feature, adjust as needed
})