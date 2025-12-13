return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    enabled = true,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- set colorscheme and overwrite highlights
      vim.cmd.colorscheme 'catppuccin-mocha'
      local colors = require 'catppuccin.palettes.mocha'
      vim.api.nvim_set_hl(0, 'Tabline', { fg = colors.green, bg = colors.mantle })
      vim.api.nvim_set_hl(0, 'TermCursor', { fg = '#A6E3A1', bg = '#A6E3A1' })
    end,
  },
}
