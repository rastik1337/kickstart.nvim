return {
  'stevearc/oil.nvim',
  opts = {
    -- default_file_explorer = false,
    skip_confirm_for_simple_edits = true,
    keymaps = {
      ['<leader>e'] = '<C-w>q',
      ['<C-v>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open in vertical split' },
      ['<C-x>'] = { 'actions.select', opts = { horizontal = true }, desc = 'Open in horizontal split' },
      ['<M-p>'] = 'actions.preview',
    },
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 3,
      max_width = 80,
      preview_split = 'below',
    },
  },
  -- Optional dependencies
  dependencies = { 'echasnovski/mini.icons' },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
