return {
  'vyfor/cord.nvim',
  build = ':Cord update',
  opts = {
    log_level = vim.log.levels.WARN,
    editor = {
      client = '1063219055265337455',
      icon = 'https://c.tenor.com/BuImo5Z739UAAAAd/tenor.gif',
      tooltip = '🐈',
    },
    display = {
      -- theme = 'catppuccin',
      swap_icons = true,
    },
  },
}
