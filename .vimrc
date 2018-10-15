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
: colorscheme railscasts
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

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'elixir-lang/vim-elixir'
Plug 'ervandew/supertab'
Plug 'https://github.com/mattn/gist-vim'
Plug 'https://github.com/mattn/webapi-vim'
Plug 'elmcast/elm-vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Find files with :Find term and K to find the word under cursor
" Requires rg to be installed
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
map <Leader>a :Find<Space>
nnoremap K :Find <C-R><C-W><CR>
