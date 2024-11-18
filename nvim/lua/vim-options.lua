vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set smartindent")

vim.g.mapleader = " "

vim.cmd([[
  nnoremap <Left>  :echoe "Use h"<CR>
  nnoremap <Right> :echoe "Use l"<CR>
  nnoremap <Up>    :echoe "Use k"<CR>
  nnoremap <Down>  :echoe "Use j"<CR>
  vnoremap <Left>  <ESC>:echoe "Use h"<CR>
  vnoremap <Right> <ESC>:echoe "Use l"<CR>
  vnoremap <Up>    <ESC>:echoe "Use k"<CR>
  vnoremap <Down>  <ESC>:echoe "Use j"<CR>
  inoremap <Left>  <ESC>:echoe "Use h"<CR>
  inoremap <Right> <ESC>:echoe "Use l"<CR>
  inoremap <Up>    <ESC>:echoe "Use k"<CR>
  inoremap <Down>  <ESC>:echoe "Use j"<CR>
]])
