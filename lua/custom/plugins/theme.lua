return {
  -- {
  --   'folke/tokyonight.nvim',
  --   priority = 998, -- Make sure to load this before all the other start plugins.
  --   init = function()
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },
  -- {
  --   'EdenEast/nightfox.nvim',
  --   priority = 999, -- Make sure to load this before all the other start plugins.
  --   opts = {
  --     options = {
  --       styles = {
  --         comments = 'italic',
  --       },
  --       colorblind = {
  --         enable = true,
  --         severity = {
  --           protan = 1,
  --           deutan = 1,
  --           tritan = 0.5,
  --         },
  --       },
  --     },
  --   },
  --   init = function()
  --     vim.cmd.colorscheme 'carbonfox'
  --   end,
  -- },
  -- { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is.
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --
  --   -- 'blazkowolf/gruber-darker.nvim',
  --   'rastik1337/gruber-darker.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   opts = {},
  --   init = function()
  --     -- Load the colorscheme here.
  --     -- Like many other themes, this one has different styles, and you could load
  --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --
  --     -- vim.g.adwaita_darker = false
  --     -- vim.g.adwaita_disable_cursorline = true
  --     -- vim.cmd.colorscheme 'adwaita'
  --     vim.cmd.colorscheme 'gruber-darker'
  --
  --     -- You can configure highlights by doing something like:
  --     -- vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  -- {
  --   'behemothbucket/gruber-darker-theme.nvim',
  --   priority = 1001, -- Make sure to load this before all the other start plugins.
  --   init = function()
  --     require('gruber-darker').setup()
  --     -- vim.cmd.colorscheme 'gruber-darker'
  --   end,
  -- },
  {
    'navarasu/onedark.nvim',
    priority = 1002, -- Make sure to load this before all the other start plugins.
    init = function()
      require('onedark').setup {
        style = 'warmer',
      }
      require('onedark').load()
      -- vim.cmd.colorscheme 'gruber-darker'
    end,
  },
  -- {
  --   'olimorris/onedarkpro.nvim',
  --   priority = 1003, -- Make sure to load this before all the other start plugins.
  --   init = function()
  --     vim.cmd 'colorscheme onedark_vivid'
  --   end,
  -- },
}
