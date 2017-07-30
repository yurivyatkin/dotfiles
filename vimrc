" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'kchmck/vim-coffee-script'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'adelarsq/vim-matchit'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'wincent/ferret'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

" Settings
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme slate         " set colorscheme
set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
set nobackup              " rely on version control
set nowritebackup         " no backup while editing
set noswapfile            " no swapfiles
set autoread              " need to do something externally
set hidden

" Powerline
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
" Smarter Airline tab line:
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Key Mappings
:let mapleader = "\<Space>"
map <leader>e :NERDTreeToggle<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Fuzzy-find with fzf
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>

" View commits in fzf
nmap <Leader>c :Commits<cr>

" Insert mode completion with fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Buffers navigation
" Display buffers list. Only the number and cr needed:
nnoremap <Leader>b :ls<CR>:b<Space>
