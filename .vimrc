" .vimrc

" Let’s use Pathogen.
execute pathogen#infect()



" Use Vim features, not Vi.
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



" NERDTree

" Run NERDTree as soon as we launch Vim...
autocmd vimenter * NERDTree
" ...but focus on the file itself, rather than NERDTree.
autocmd VimEnter * wincmd p
" Close Vim if only NERDTree is left open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" Set relevant filetypes
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.hbs set filetype=html



" Buffer management

" Open splits to the right or below; more natural than the default.
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
" No extra spaces when joining lines.
set nojoinspaces



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
" Show invisibles
set list
set listchars=tab:>-,trail:~
" Set relative line numbers if we can...
if exists("+relativenumber")
  " Due to a problem with relative line numbers not persisting across new
  " tabs and splits, set no line numbers at all...
  set nonumber
  " ..then set relative ones.
  set relativenumber
  " ...otherwise let’s just have regular ones.
else
  set number
endif
" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
  set colorcolumn=81
endif
" Force cursor onto a new line after 80 characters
set textwidth=80
"Highlight current line
set cursorline



" Search

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
" Make `Y` behave like `C` and `D`.
map Y y$

" Make keypad function correctly.
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
ab lipsum Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
