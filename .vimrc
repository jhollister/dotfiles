" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins go here
" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-latex/vim-latex'
" TODO Should replace this, its outdated
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'roman/golden-ratio'
Plug 'christoomey/vim-tmux-navigator'

" Open vimwiki with <Leader>ww
Plug 'vimwiki/vimwiki'

" Comment out lines with <Leader>cc
" Toggle comments with <Leader>c<space>
Plug 'preservim/nerdcommenter'

" Initialize plugin system
call plug#end()

"CtrlP Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\[\/]\.(git|hg|svn)$'

"Nerdtree plugin settings to toggle with CTR-n
map <C-n> :NERDTreeToggle<CR>

"Airline plugin
let g:airline_powerline_fonts = 1
set laststatus=2

"Vimwiki
"Use markdown and set path
let g:vimwiki_list = [{'path': '~/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

"make folds save
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"load folds with F6 if the above doesn't work. Usually because of plugins
map <f6> :loadview<CR>


" Use Vim settings
set nocompatible
" Make backspace behave in a sane manner.
set backspace=indent,eol,start


" Map leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" Switch syntax highlighting oo
syntax enable

set t_Co=256
set background=dark
"colorscheme solarized
filetype on

" Highlight column 81 if it goes over
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" Enable file type detection and do language-dependent indenting.
filetype plugin on
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Show commands on bottom of screen
set showcmd

" Show column and line number at bottom of screen
set ruler

" automatically indent
set autoindent

"automatically save on make and other commands
set autowrite

" toggle paste mode when pasting with ctrl-v
set pastetoggle=<f5>

" easy buffer switching
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Set indents to 4 spaces
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" tab completion
set wildmenu
set omnifunc=syntaxcomplete#Complete

" Ignore case
set ignorecase
set smartcase

" Search stuff
set hlsearch
set incsearch

" More natural feeling splits
set splitbelow
set splitright

" Remap for long lines
nnoremap k gk
nnoremap j gj

" command to remove trailing spaces from file
command ClearTrailing %s/\s\+$//e
