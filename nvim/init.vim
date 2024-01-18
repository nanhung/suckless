
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List of plugins.
" Make sure you use single quotes

" Shorthand notation
Plug 'rakr/vim-one'            	" vim-one color theme
Plug 'jalvesaq/Nvim-R'               
Plug 'itchyny/lightline.vim'    " minimal status bar
Plug 'mhinz/vim-startify'       " a start menu for vim
Plug 'ervandew/supertab'        " completions with Tab
Plug 'jalvesaq/R-Vim-runtime'   " indent for pipe
Plug 'airblade/vim-gitgutter'   " show git changes in gutter
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
"set linebreak breakindent       " not cut word when switch line
"set textwidth=120               " set text width (use in markdown) set
"formatoptions+=a                " apply text width setting

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

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Automatic closing brackets
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Move line up/down: ddkp/ddp
" Select and replace all: :%s/SearchWord/ReplaceWord

" Nvim-R
" https://github.com/jamespeapen/Nvim-R/wiki/Use
" <C-x-o>   " Auto complete
" \rf       " Connect to R console.
" \rq       " Quit R console.
" \ro       " Open object bowser.
" \d        " Execute current line of code and move to the next line.
" \ss       " Execute a block of selected code.
" \aa       " Execute the entire script. This is equivalent to source().
"
"  . Chunk (cur)                                        \cc
"  . Chunk (cur, echo)                                  \ce
"  . Chunk (cur, down)                                  \cd
"  . Chunk (cur, echo and down)                         \ca
"  . Chunk (from first to here)                         \ch

" Disable converting underscore into <-
let R_assign = 0

" Use radian (had issue in resizing plot)
"let R_app = "radian"
"let R_cmd = "R"
"let R_hl_term = 0
"let R_args = []  " if you had set any
"let R_bracketed_paste = 1
"
"3G   "go to line 3
"3gt  "go to tab 3
":b3  "go to buffer
"gj   " display line move  
"<C-6> buffer switch

