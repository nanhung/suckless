return {
  { "ervandew/supertab"},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },
  { "R-nvim/R.nvim", version = '0.1.0'},
  {
    "R-nvim/cmp-r",
    {
      "hrsh7th/nvim-cmp",
      config = function()
        require("cmp").setup({ sources = {{ name = "cmp_r" }}})
        require("cmp_r").setup({})
      end,
    },
  },
}
