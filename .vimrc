execute pathogen#infect()

syntax enable " syntax highlighting
colorscheme candycode " 0x7A69_dark, ChasingLogic, SlateDark

filetype plugin indent on " clojure plugins require this

" map , to be <leader> key. i.e. ,cc will comment out line
let mapleader=","

" map jj to switch modes
imap jj <Esc>

" local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Disable Ex mode
nnoremap Q <nop>

set showmatch " match braces/parenthesis
set smartcase
set hlsearch " highlight search matches
" remove highlighting from search results
nnoremap <C-L> :nohlsearch<CR>
" toggle paste to avoid vims awesome indendation
set pastetoggle=<C-K>

set ruler
set wildmenu " horizontal menu for file autocomplete
set ignorecase " only case sensitive when searching with uppercase

set number " line numbering
set relativenumber " line numbering
highlight LineNr ctermfg=gray " line color

set smarttab
set shiftwidth=2 " how many columns text is indented with the reindent operations << and >>
set tabstop=2 " number of spaces per tab
set softtabstop=2 " number of spaces per tab when <TAB> is hit
set expandtab " turn tabs into spaces
set ai " autoindent
set si

nmap <silent> <C-B> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=30
" autocmd VimEnter * NERDTree " start NERDTree on startup
" autocmd VimEnter * wincmd p " start with cursor in file

filetype plugin on " NERDCommenter

let g:ctrlp_working_path_mode = 0 " search for files ever ywhere

