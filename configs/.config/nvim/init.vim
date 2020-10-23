let mapleader=" "

" Personilzation here
syntax on

set guicursor=
set noshowmatch
set relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set shell=/bin/bash

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'mbbill/undotree'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
"
call plug#end()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gf <Plug>(coc-implementation)
nnoremap <leader>f :Files<cr>
nnoremap <leader>gf :GFiles<cr>" Give more space for displaying messages.
nnoremap <silent> K :call <SID>show_documentation()<CR>

nnoremap <leader>ps :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
set cmdheight=2
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Gruvbox setup
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

colorscheme gruvbox

let g:startify_bookmarks = [{'c': '~/configs/configs/.config/nvim/init.vim'}]

"" Exit terminal mode with esc
tnoremap <Esc> <C-\><C-n>



