set number
set tabstop=2
set shiftwidth=2
set expandtab
set path+=.,src/**
set relativenumber
set nohlsearch

set cursorline
set termguicolors



set nobackup 

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"


nnoremap <silent> <LEFT> :vertical resize -2 <CR>
nnoremap <silent> <RIGHT> :vertical resize +2 <CR>
nnoremap <silent> <UP> :resize -2 <CR>
nnoremap <silent> <DOWN> :resize +2 <CR>
nnoremap <silent> K :call ShowDocumentation()<CR>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

inoremap <LEFT> <Nop>
inoremap <RIGHT> <Nop>

colorscheme slate

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap y "+y
vnoremap y "+y
nnoremap pp "+p
vnoremap pp "+p

nnoremap d "dd
vnoremap d "dd
nnoremap pd "dp
vnoremap pd "dp
nnoremap c "cc
vnoremap c "cc
nnoremap pc "cp
vnoremap pc "cp
nnoremap x "xx
vnoremap x "xx
nnoremap px "xp
vnoremap px "xp

nnoremap p "+p
vnoremap p "+p

call plug#begin('~/.local/share/nvim/plugged')
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
"kolev plugs to try
Plug 'sangdol/mintabline.vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'nvim-lua/plenary.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/everforest'
Plug 'diegoulloao/neofusion.nvim'
Plug 'shaunsingh/solarized.nvim'
Plug 'rebelot/kanagawa.nvim'

" Add colorizer to highlight CSS/HTML colors
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()



lua require'colorizer'.setup()
