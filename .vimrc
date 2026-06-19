" Comments in Vimscript start with a `"`.
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-fugitive'        		" allows git commands in vim session
Plug 'airblade/vim-gitgutter'    		" show git changes in gutter
Plug 'easymotion/vim-easymotion' 		" go to any word quickly '\\w', '\\e', '\\b'
Plug 'preservim/nerdtree'        		" File explore
Plug 'preservim/vim-markdown'    		" :Toc
Plug 'karoliskoncevicius/vim-sendtowindow'
Plug 'christoomey/vim-system-copy'
call plug#end()

" Scroll terminal <C-w>N
set background=dark
colorscheme retrobox
set clipboard+=unnamedplus 
nnoremap Q vipJjj

let g:vimwiki_list = [{ 'syntax': 'markdown', 
                  \ 'ext': 'md',
                  \ 'path': '~/just-keep-writing/P-notes/'}]

let g:vim_markdown_toc_autofit = 1

" VWS <searh term>
" lne:   next 
" lp:    previous
" @:     find next
" copen: open list
"
" vim /<search term>/g *.md

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

filetype plugin on

syntax on

set updatetime=100  	          " set update time for gitgutter update

"se a line cursor within insert mode and a block cursor everywhere else.
"
"" Reference chart of values:
"   Ps = 0  -> blinking block.
"   "   Ps = 1  -> blinking block (default).
"   "   Ps = 2  -> steady block.
"   "   Ps = 3  -> blinking underline.
"   "   Ps = 4  -> steady underline.
"   "   Ps = 5  -> blinking bar (xterm).
"   "   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Don't use swap file
set noswapfile

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
" nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

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
" ...and in insert mode
"inoremap <Left>  <ESC>:echoe "Use h"<CR>
"inoremap <Right> <ESC>:echoe "Use l"<CR>
"inoremap <Up>    <ESC>:echoe "Use k"<CR>
"inoremap <Down>  <ESC>:echoe "Use j"<CR>
