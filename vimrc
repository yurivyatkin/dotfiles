" Plugins
call plug#begin()
Plug 'wikitopian/hardmode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jpo/vim-railscasts-theme'
Plug 'edkolev/tmuxline.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'kchmck/vim-coffee-script'
Plug 'jparise/vim-graphql'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'adelarsq/vim-matchit'
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'ternjs/tern_for_vim'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'wincent/ferret'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'qpkorr/vim-renamer'
Plug 'jpalardy/vim-slime'
Plug 'luochen1990/rainbow'
Plug 'guns/vim-sexp', {'for': 'clojure'} 
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'
Plug 'google/vim-codefmt'
Plug 'liquidz/vim-iced', {'for': 'clojure'}
call plug#end()

" Settings
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme railscasts     " set colorscheme
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

" Emmet, via https://drivy.engineering/setting-up-vim-for-react/
" (notice, that it works with comma pressed immediately after Tab)
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Prettier with ALE, see https://prettier.io/docs/en/vim.html
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 0
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linters = {
      \ 'clojure': ['clj-kondo'],
      \}

" Make the key binding as in VSCode:
map <C-S-i> :ALEFix<cr>

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
" Navigate between buffers:
map gn :bn<cr>
map gp :bp<cr>

" Long lines navigation
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ferret results navigation
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Tagbar Mappings
nmap <F8> :TagbarToggle<CR>

" Hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Tern settings
" http://www.dotnetsurfers.com/blog/2016/02/08/using-vim-as-a-javascript-ide
" - enable keyboard shortcuts
let g:tern_map_keys=1
" - show argument hints
let g:tern_show_argument_hints='on_hold'
" - disable showing location after rename
let g:tern_show_loc_after_rename=0
" - disable mode indication to see arguments hints
:set noshowmode
" - reduce the update time to 1s
:set updatetime=1000

" JsDoc settings
nmap <silent> <leader>j ?function<cr>:noh<cr><Plug>(jsdoc)

" Vim-slime settings
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

" Rainbow parentheses 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Enable vim-iced's default key mapping
" This is recommended for newbies
let g:iced_enable_default_key_mappings = v:true
