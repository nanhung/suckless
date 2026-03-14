return { 
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "crispgm/telescope-heading.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { 
      "nvim-lua/plenary.nvim",
  },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- sudo install ripgrep
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
      vim.keymap.set('n', '<leader><leader>h', ':Telescope heading<CR>', {})
      vim.keymap.set('n', '<leader><leader>b', ':Telescope buffers<CR>', {})
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("heading") -- Note `:set ft=markdown` for rmarkdown file 
    end,
  },
}
