" Basic stuff, leader to space, remap esc, saving files
:let mapleader = " "
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:imap jk <Esc>l
:nnoremap <Leader>s :update<CR>
:nnoremap <Leader>x :x<CR>
:nnoremap <Leader>q :bd<CR>
:nnoremap <Leader>p :FZF<CR>
:nnoremap <Up> <nop>
:nnoremap <Down> <nop>
:nnoremap <Left> <nop>
:nnoremap <Right> <nop>
" Text indentantion
:set expandtab
:set shiftwidth=2
:set autoindent
:filetype indent plugin on
" Don't use swp files (not sure yet if it's a good idea or not)
:set noswapfile
"Finding files
set wildmode=list:longest
" Colorscheme
" :colorscheme molokai
: colorscheme railscasts
" :set foldcolumn=2 "padding on left
" :set exrc (enable .vimrc per project, disabled by default for security
" reasons) /if enabled it's a good idea to also :set secure
:set nowrap
:set cursorline
:set number

"hide buffers when not displayed | This allow to switch between buffers
"without saving
:set hidden
"
"" utf-8 default encoding
:set enc=utf-8
:map <Leader><Tab> :bn<CR>

" " "
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/jiangmiao/auto-pairs'
call plug#end()

