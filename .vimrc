set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

set mouse=a
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set encoding=utf-8

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

autocmd VimEnter * NERDTree | wincmd p
autocmd FileType apache setlocal commentstring=#\ %s

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'preservim/nerdtree'
Plug 'dmerejkowsky/vim-ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ycm-core/YouCompleteMe'
Plug 'x4m3/vim-epitech'
Plug 'github/copilot.vim'
call plug#end()

