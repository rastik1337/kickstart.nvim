return {
  'github/copilot.vim',
  init = function()
    vim.g.copilot_enabled = false

    vim.keymap.set('i', '<C-J>', '<Plug>(copilot-suggest)')
    vim.keymap.set('n', '<leader>ce', function()
      vim.g.copilot_enabled = not vim.g.copilot_enabled
    end, { desc = '[C]opilot Toggl[E]' })
  end,
}
