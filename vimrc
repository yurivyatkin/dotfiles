" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'digitaltoad/vim-pug'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
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

" Powerline
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" Key Mappings
:let mapleader = "\<Space>"
map <leader>e :NERDTreeToggle<CR>
