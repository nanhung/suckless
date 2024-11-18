return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {
      keys = 'etovxqpdygfblzhckisuran'
  },
  config = function()
    require('hop').setup({
      options = {
        vim.keymap.set('n', '<leader>f', ':HopWord<CR>', {})
      }
    })
  end
}
