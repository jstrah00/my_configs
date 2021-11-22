"Gral configs
set tabstop=4 softtabstop=4
set expandtab
set shiftwidth=4
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set smartindent
set noswapfile
set incsearch
set scrolloff=8
set smartcase
set nu
set nobackup
set number
set relativenumber
set clipboard=unnamedplus

""""" Plugins
call plug#begin('~/.vim/plugged')
"Color scheme
Plug 'morhetz/gruvbox' 
"telescope and requirements
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim' Disabled while using macvim
"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"vim airlines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"undotree
Plug 'mbbill/undotree'
"auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"tsx
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
"more js and typescript syntax 
Plug 'jelera/vim-javascript-syntax'
"nerdtree
Plug 'preservim/nerdtree'
"Vim Fugitive (GIT)
call plug#end()

"set colorscheme
colorscheme gruvbox

"vim airline customizations
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='gruvbox'

"leader maps
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
autocmd FileType python map <buffer> <leader>p :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"jump screens
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>

"telescope maps
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fw <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"nnoremap <leader>fg <cmd>Telescope git_files<cr>

"undotree maps
nnoremap <leader>ut :UndotreeToggle<CR>

" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

"COC stuff

set encoding=utf-8
set nobackup
set nowritebackup
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

nmap <silent> gr <Plug>(coc-references)
"End coc stuff
"
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
let NERDTreeQuitOnOpen=1

"FuzzyFinder
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
