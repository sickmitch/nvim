:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

colorscheme aura-dark

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " Recommended, not required.
Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/lambdalisue/suda.vim'  " Suda Rule

set encoding=UTF-8

call plug#end()

:set completeopt-=preview " For No Previews

nnoremap <C-w> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <C-k> :TagbarToggle<CR>

inoremap <silent><expr> <C-q> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
