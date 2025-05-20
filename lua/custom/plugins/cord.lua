local icon_normal = 'https://c.tenor.com/BuImo5Z739UAAAAd/tenor.gif'
local icon_idle = 'https://preview.redd.it/my-boy-eddie-sleeping-v0-patz0a6lixp81.jpg?auto=webp&s=7e7729586c3a4e086b89dcb868e49bccdfc7b487'

return {
  'vyfor/cord.nvim',
  build = ':Cord update',
  opts = {
    enabled = false,
    log_level = vim.log.levels.WARN,
    editor = {
      client = '1063219055265337455',
      icon = icon_normal,
      tooltip = '🐈',
    },
    display = {
      -- theme = 'catppuccin',
      swap_icons = true,
      swap_fields = true,
    },
    timestamp = {
      reset_on_idle = true,
    },
  },
  init = function()
    vim.keymap.set('n', '<leader>pt', function()
      require('cord.api.command').toggle_presence()
    end, { desc = 'Discord [P]resence [T]oggle' })

    -- require('cord.plugin.activity.hooks').register('idle_enter', function()
    --   require('cord.plugin.config').editor.icon = icon_idle
    -- end)
    -- require('cord.plugin.activity.hooks').register('idle_leave', function()
    --   require('cord.plugin.config').editor.icon = icon_normal
    -- end)
  end,
}
