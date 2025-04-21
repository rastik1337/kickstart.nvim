return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'j-hui/fidget.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    display = {
      diff = {
        provider = 'mini_diff',
      },
    },
  },
  init = function()
    vim.keymap.set({ 'n', 'v' }, '<C-a>', '<cmd>CodeCompanionActions<cr>', { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>a', '<cmd>CodeCompanionChat Toggle<cr>', { noremap = true, silent = true })
    vim.keymap.set('v', 'ga', '<cmd>CodeCompanionChat Add<cr>', { noremap = true, silent = true })

    require('custom.plugins.code-companion.fidget-spinner'):init()
  end,
}
