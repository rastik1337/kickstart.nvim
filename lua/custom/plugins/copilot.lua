return {
  'github/copilot.vim',
  init = function()
    vim.g.copilot_enabled = false

    vim.keymap.set('i', '<C-I>', '<Plug>(copilot-suggest)')
    vim.keymap.set('n', '<leader>cp', ':Copilot<CR>', { desc = '[C]opilot [P]anel' })
  end,
}
