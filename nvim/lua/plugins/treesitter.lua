return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_instlled = {"lua", "r", "markdown", "markdown_inline", "rnoweb", "yaml", "python"},
      highlight = {enable = true}
    })
  end
}
