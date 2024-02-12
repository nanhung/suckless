
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'srcery-colors/srcery-vim'
Plug 'jalvesaq/Nvim-R'               
Plug 'jalvesaq/R-Vim-runtime'    " indent for pipe
Plug 'itchyny/lightline.vim'     " minimal status bar
Plug 'mhinz/vim-startify'        " a start menu for vim
Plug 'ervandew/supertab'         " completions with Tab
Plug 'airblade/vim-gitgutter'    " show git changes in gutter
Plug 'easymotion/vim-easymotion' " go to any word quickly '\\w', '\\e', '\\b'
Plug 'vim-pandoc/vim-pandoc'     " bibliogrophy auto complete in markdown
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'karoliskoncevicius/vim-sendtowindow'
Plug 'ThePrimeagen/vim-be-good'
" Initialize plugin system
call plug#end()

" Theme settings
colorscheme srcery
set background=dark " for the dark version
set termguicolors " fg and bg highlighting requires compatible terminal colors

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
set smartindent                          " To switch on smart indentation
set tabstop=2                   " The width of a hard tabstop
set shiftwidth=2 	              " The size of an indent
set updatetime=100  	          " set update time for gitgutter update
set noswapfile                  " no swap
set clipboard=unnamedplus       " copy/paste between vim and other programs
set colorcolumn=80              " vertical line to indicate line number
" Set colorcolumn's color to slightly lighter than my background
" so that it is visible but not an eyesore.
highlight ColorColumn ctermbg=235 guibg=#262626
set foldmethod=syntax
set mouse=a                     " enable mouse support in all mode
set ignorecase                  " To ignore case when searching.
set smartcase                   " When searching try to be smart about cases.
set hlsearch                    " To highlight search results.
set incsearch                   " To make search act like search in modern browsers.
"set linebreak breakindent       " not cut word when switch line
"set textwidth=120               " set text width (use in markdown) set
"formatoptions+=a                " apply text width setting

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<CR>" : "\<Tab>"

" Window Splits
set splitright splitbelow
" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>hh <C-w>t<C-w>H
map <Leader>kk <C-w>t<C-w>K
" Start terminals for R and Python sessions '\tr' or '\tp'
map <Leader>tr :new term://bash<CR>iradian<CR><C-\><C-n><C-w><C-j>k
map <Leader>tp :new term://bash<CR>ipython3<CR><C-\><C-n><C-w><C-j>k
map <Leader>tt :new term://bash<CR>i<CR><C-\><C-n><C-w><C-j>k

" Alternative method to escape
set timeoutlen=500
inoremap jj <Esc>

" set vim-r-plugin to 
let r_indent_align_args = 0
" Set vim-r-plugin to mimics ess :
let r_indent_ess_comments = 0
let r_indent_ess_compatible = 0
" Set syntax folding in R
let r_syntax_folding = 1 "zR: Open all, zM: Close all , zc: close current
" Disable converting underscore into <-
let R_assign = 0
let R_set_omnifunc = ["r",  "rmd", "quarto", "rnoweb", "rhelp", "rrst"]

