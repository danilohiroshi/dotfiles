vim.keymap.set('n', '<c-t>n', ':TestNearest<CR>')
vim.keymap.set('n', '<c-t>f', ':TestFile<CR>')
vim.keymap.set('n', '<c-t>s', ':TestSuite<CR>')
vim.keymap.set('n', '<c-t>l', ':TestLast<CR>')
vim.keymap.set('n', '<c-t>v', ':TestVisit<CR>')

vim.cmd([[
  function! FloatermStrategy(cmd)
    execute 'silent FloatermKill scratch'
    execute 'FloatermNew! --autoclose=2 --name=scratch '.a:cmd.' |less -X'
  endfunction
  let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
  let g:test#strategy = 'floaterm'
]])