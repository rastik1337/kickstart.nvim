return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = true,
  opts = {
    graph_style = 'unicode',
    kind = 'split_below_all',
    mappings = {
      status = {
        ['='] = 'Toggle',
      },
    },
    commit_editor = {
      spell_check = false,
      staged_diff_split_kind = 'auto',
    },
  },
}
