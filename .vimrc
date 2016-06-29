" .vimrc

" Setup

" Let‚Äôs use Pathogen
execute pathogen#infect()
" Space as a Leader
let mapleader = "\<Space>"
" Use Vim features, not Vi
set nocompatible
set encoding=utf-8



" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" 256 colours please
set t_Co=256
" Dark solarized scheme
set background=dark
colorscheme solarized



" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim



" Set the dimmed colour for Limelight
let g:limelight_conceal_ctermfg = 'LightGrey'



" NERDTree

" Run NERDTree as soon as we launch Vim...
autocmd vimenter * NERDTree
" ...but focus on the file itself, rather than NERDTree
autocmd VimEnter * wincmd p
" Close Vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" Set relevant filetypes
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.hbs set filetype=html



" Buffer management

" Open splits to the right or below; more natural than the default
set splitright
set splitbelow



" Text management

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
" Spell-check always on
set spell
" Underscores denote words
set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats=



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]



" Visual decorations

" Show status line
set laststatus=2
" Show what mode you‚Äôre currently in
set showmode
" Show what commands you‚Äôre typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Show invisibles
set list
set listchars=tab:>-,trail:¬∑
" Set relative line numbers if we can...
if exists("+relativenumber")
  " Due to a problem with relative line numbers not persisting across new
  " tabs and splits, set no line numbers at all...
  set nonumber
  " ..then set relative ones...
  set relativenumber
  " ...otherwise let‚Äôs just have regular ones
else
  set number
endif
" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
  set colorcolumn=81
endif
" Force cursor onto a new line after 80 characters
set textwidth=80
" Highlight current line
set cursorline



" Search

" Don‚Äôt keep results highlighted after searching...
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
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" Make `Y` behave like `C` and `D`
map Y y$
" `vv` to highlight just the text (i.e. no indents) in a line
map vv ^vg_
" `<Cr` in normal mode inserts a break at the cursor and enters insert mode
"nnoremap <Cr> i<CR><ESC>I
" Switch to previous window
map <leader>` <C-w><C-p>
" Vim-like window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" `G` skips to bottom of file and places line in middle of screen
nnoremap G :norm! Gzz<CR>
" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>
" `gF` opens file under cursor in a new split
nnoremap gF <C-w>f

" Make keypad function correctly
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map <Esc>OM <CR>
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -
map! <Esc>OM <CR>



" Abbreviations and auto-completions

" lipsum<Tab> drops some Lorem ipsum text into the document
iab lipsum Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
" Set up a section-level comment
iab comsec 
\/* ==========================================================================
\<Cr>#
\<Cr>========================================================================== */
" Set up a sub-level comment
iab comsub 
\/*
\<Cr>========================================================================== */
" Running the `@c` macro will always insert a section-level comment
let @c = 'O^Mcomsec><80>kbjk2?*^M^Vkr A'
" Running the `@x` macro will always insert a sub-level comment
let @x = 'O^Mcomsub><80>kbjk^[^r kA '
