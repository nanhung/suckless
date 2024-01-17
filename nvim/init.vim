" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List of plugins.
" Make sure you use single quotes

" Shorthand notation
Plug 'rakr/vim-one'            	     " vim-one color theme
Plug 'jalvesaq/Nvim-R'               " required for ncm-R

Plug 'ThePrimeagen/vim-be-good'
" Initialize plugin system
call plug#end()

" Theme settings
colorscheme one
set background=dark " for the dark version
set termguicolors

" General settings
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start  " To make backscape work in all conditions
set ma                          " To set mark a at current cursor location
set number                      " To switch the line numbers on
set relativenumber
set expandtab                   " To enter spaces when tab is pressed
set smarttab                    " To use smart tabs
set autoindent                  " To copy indentation from current line 
                                " when starting a new line.
set si                          " To switch on smart indentation
set tabstop=2                   " The width of a hard tabstop
set shiftwidth=2 	              " The size of an indent
set updatetime=100  	          " set update time for gitgutter update
set noswapfile                  " no swap
set clipboard=unnamedplus       " copy/paste between vim and other programs
set colorcolumn=80              " vertical line to indicate line number
set foldmethod=syntax
set mouse=a                     " enable mouse support in all mode
set ignorecase                  " To ignore case when searching.
set smartcase                   " When searching try to be smart about cases.
set hlsearch                    " To highlight search results.
set incsearch                   " To make search act like search in modern browsers.