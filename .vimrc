" .vimrc



" No compatibility
set nocompatible



" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" Dark solarized scheme
set background=dark
colorscheme solarized



" Set files with .scss extensions to Sass filetype
au BufRead,BufNewFile *.scss set filetype=scss



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
set relativenumber
" Limit line-length to 80 columns
set colorcolumn=81
"Highlight current line
set cursorline



" Disable arrow keys (hardcore)
"map  <up>    <nop>
"imap <up>    <nop>
"map  <down>  <nop>
"imap <down>  <nop>
"map  <left>  <nop>
"imap <left>  <nop>
"map  <right> <nop>
"imap <right> <nop>