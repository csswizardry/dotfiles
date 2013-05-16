" .vimrc



" No compatibility
set nocompatible
set encoding=utf-8



" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" 256 colours, please
set t_Co=256
" Dark solarized scheme
set background=dark
colorscheme solarized



" Set files with .scss extensions to CSS filetype
au BufRead,BufNewFile *.scss set filetype=css



" Tabs, indentation and lines

filetype plugin indent on
" 4 spaces please
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearst multiple of 4
set shiftround
" No line-wrapping
set nowrap



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
"Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Underscores denote words
set iskeyword-=_



" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Show line number...
set number
" ...and set them relative to the current line
if exists("+relativenumber")
    set relativenumber
else
    set number
endif
" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
    set colorcolumn=81
endif
"Highlight current line
set cursorline
" Don’t keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase



" Key mappings

" jj to throw you into normal mode from insert mode
inoremap jj <esc>
" jk to throw you into normal mode from insert mode
inoremap jk <esc>
" Disable arrow keys (hardcore)
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>
