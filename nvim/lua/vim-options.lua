vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set foldmethod=syntax")
vim.cmd("set colorcolumn=80")
vim.cmd("set noswapfile")

vim.g.mapleader = " "

vim.cmd([[
  nnoremap <Left>  :echoe "Use h"<CR>
  nnoremap <Right> :echoe "Use l"<CR>
  nnoremap <Up>    :echoe "Use k"<CR>
  nnoremap <Down>  :echoe "Use j"<CR>
  vnoremap <Left>  :echoe "Use h"<CR>
  vnoremap <Right> :echoe "Use l"<CR>
  vnoremap <Up>    :echoe "Use k"<CR>
  vnoremap <Down>  :echoe "Use j"<CR>
]])
