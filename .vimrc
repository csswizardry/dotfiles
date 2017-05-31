" .vimrc

" Setup

" Let’s use Pathogen
execute pathogen#infect()
" Space as a Leader
let mapleader = "\<Space>"
" Use Vim features, not Vi
set nocompatible
" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8



" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" Show matching parens, brackets, etc.
set showmatch
" 256 colours please
set t_Co=256
" Solarized colour scheme...
colorscheme solarized
" ...with a dark background
set background=dark
" Italicised comments and attributes
highlight Comment cterm=italic
highlight htmlArg cterm=italic
" Ensure that italics carry over if I ever switch light/dark scheme
autocmd ColorScheme * highlight! Comment cterm=italic
autocmd ColorScheme * highlight! htmlArg cterm=italic
" Tell Vim to look in my home directory for more ctags
set tags+=tags;$HOME



" Airline
let g:airline_detect_spell=0



" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim



" Set the dimmed colour for Limelight
let g:limelight_conceal_ctermfg = 'LightGrey'



" Disable indentLine by default
let g:indentLine_enabled = 0



" NERDTree

" Run NERDTree as soon as we launch Vim...
"autocmd vimenter * NERDTree
"" ...but focus on the file itself, rather than NERDTree
"autocmd VimEnter * wincmd p
" Close Vim if only NERDTree is left open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" Set relevant filetypes
"au BufRead,BufNewFile *.scss set filetype=css
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.hbs set filetype=html



" Buffer management

" Open splits to the right or below; more natural than the default
set splitright
set splitbelow
" Set the working directory to wherever the open file lives (can be problematic)
set autochdir
" set path+=**
" Show file options above the command line
set wildmenu
" Don’t offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*



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
set nrformats-=octal
" Auto-format comments
set formatoptions+=jroqn1



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc.
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Don’t redraw the screen unless we need to
set lazyredraw
" Write swapfiles to disk a little sooner
set updatetime=250



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
" Customise our current location information
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)
" Show file title in terminal tab
set title
" Show invisibles
set list
set listchars=tab:»-,trail:·
" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line (hybrid numbering)
set number
" Force the cursor onto a new line after 80 characters
set textwidth=80
" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72
" Colour the column just after our line limit so that we don’t type over it
set colorcolumn=+1
" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51
" Highlight current line
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
inoremap jj <Esc>
" jk to throw you into normal mode from insert mode
inoremap jk <Esc>
" Disable arrow keys (hardcore)
map  <Up>    <Nop>
imap <Up>    <Nop>
map  <Down>  <Nop>
imap <Down>  <Nop>
map  <Left>  <Nop>
imap <Left>  <Nop>
map  <Right> <Nop>
imap <Right> <Nop>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" Make `Y` behave like `C` and `D`
nnoremap Y y$
" Make `n`/`N` bring next search result to middle line
nnoremap n nzz
nnoremap N Nzz
" `vv` to highlight just the text (i.e. no indents) in a line
nnoremap vv ^vg_
" `<CR>` in normal mode inserts a break at the cursor and enters insert mode
nnoremap <CR> i<CR><Esc>I
" `G` skips to bottom of file and places line in middle of screen
nnoremap G :norm! Gzz<CR>
" Switch to previous window
nnoremap <Leader>` <C-w><C-p>
" Vim-like window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" `gb` switches to next buffer, like `gt` does with tabs
nnoremap gb :bn<CR>
" `gB` switches to previous buffer, like `gT` does with tabs
nnoremap gB :bp<CR>
" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>
" `gF` opens file under cursor in a new split
nnoremap gF <C-w>f
" Toggle `hlsearch` with <Space>/
nnoremap <Leader>/ :set hlsearch!<CR>
" Make tabbing persistent in visual mode
vnoremap <Tab> >gv
" Toggle indentLine plugin on/off
nnoremap <Leader>i :IndentLinesToggle<CR>
" Toggle pasting mode
nnoremap <Leader>p :set paste!<CR>
" Toggle light/dark backgrounds
nnoremap <Leader>bg :let &background = (&background == "dark" ? "light" : "dark")<CR>
" Strip trailing whitespace
nnoremap <Leader>ws :%s/ \+$//<CR>
" Convert tabs to spaces
nnoremap <Leader>rt :retab<CR>

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
map <KPlus> +
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
map! <KPlus> +
map! <Esc>OS -
map! <Esc>OM <CR>



" Abbreviations and auto-completions

" lipsum<Tab> drops some Lorem ipsum text into the document
iab lipsum Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
" Insert email address
iab @@ csswizardry@gmail.com
" Insert username
iab @@@ csswizardry
" Automatically add `rel="noopener"` to `target="_blank"`
iab target="_blank" target="_blank" rel="noopener"
" `comline` will add a line-comment to our CSS
iab comline /* [x] */
" Running the `@c` macro will always insert a section-level comment
let @c = 'O/* jk74a=jkokbkbkb   # kb jk74a=jkA */jkkA'
" Running the `@x` macro will always insert a sub-level comment
let @x = 'o/*kbkb  jk74a=jkA */jkkA '
" Running the `@v` macro will always insert a line-level comment
let @v = 'A comline	kbjkFxs'
