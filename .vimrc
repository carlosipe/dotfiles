" Basic stuff, leader to space, remap esc, saving files
:set t_Co=256
:let mapleader = " "
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:imap jk <Esc>l
:nnoremap <Leader>s :update<CR>
:nnoremap <Leader>x :x<CR>
:nnoremap <Leader>q :bd<CR>
:nnoremap <Leader><Leader> :FZF<CR>
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
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://gist.githubusercontent.com/carlosipe/98a3621deee8f9b638881c8489799f69/raw/7e66d1ff96f0b1f761100521080ed8ae53030442/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'elixir-lang/vim-elixir'
Plug 'ervandew/supertab'
Plug 'https://github.com/mattn/gist-vim'
Plug 'https://github.com/mattn/webapi-vim'
Plug 'elmcast/elm-vim'
Plug 'vim-syntastic/syntastic'
call plug#end()
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <tab> ((pumvisible())?("\<Cr>"):("<Cr>"))
