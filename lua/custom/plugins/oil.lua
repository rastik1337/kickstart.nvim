return {
  'stevearc/oil.nvim',
  opts = {
    -- default_file_explorer = false,
    keymaps = {
      ['<leader>e'] = '<C-w>q',
      ['<C-v>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open in vertical split' },
      ['<C-x>'] = { 'actions.select', opts = { horizontal = true }, desc = 'Open in horizontal split' },
      ['<M-p>'] = 'actions.preview',
    },
  },
  -- Optional dependencies
  dependencies = { 'echasnovski/mini.icons' },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
