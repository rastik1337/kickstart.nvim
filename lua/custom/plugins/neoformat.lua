return {
  'sbdchd/neoformat',
  config = function()
    vim.g.neoformat_try_node_exe = 1

    vim.keymap.set('n', '<leader>f', ':Neoformat<CR>')
  end,
}
