-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
  { "jalvesaq/Nvim-R" },
 -- { "vim-pandoc/vim-pandoc" },
 -- { "vim-pandoc/vim-pandoc-syntax" },
}
vim.cmd [[
  set relativenumber
  set colorcolumn=80
]]
vim.keymap.set('i', 'jj', "<Esc>", { silent = true })

-- folding powered by treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter#folding
-- look for foldenable: https://github.com/neovim/neovim/blob/master/src/nvim/options.lua
-- Vim cheatsheet, look for folds keys: https://devhints.io/vim
vim.opt.foldmethod = "indent" -- https://neovim.io/doc/user/fold.html
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- default is ""
vim.opt.foldenable = true -- if this option is true and fold method option is other than normal, every time a document is opened everything will be folded.

