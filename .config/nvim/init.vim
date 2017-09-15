call plug#begin('~/.local/share/nvim/plugged')
"Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim'
Plug 'shime/vim-livedown'
call plug#end()

set autoindent tabstop=2 shiftwidth=2 expandtab
set encoding=utf-8
set number ruler cursorline
set incsearch
set wildmenu
set backspace=indent,eol,start
set autoread
set scrolloff=5
set sidescrolloff=5
set mouse=a
set hlsearch
set foldmethod=indent foldignore=
set noswapfile

syntax on
filetype on
filetype indent on
filetype plugin on
let g:solarized_termcolors=16
set t_Co=16
set background=dark
colorscheme solarized

noremap j gj
noremap k gk
nmap mt :LivedownToggle<CR>

let g:ctrlp_custom_ignore={
  \ 'dir': '\.git$\|node_modules\|tmp\|bower_components',
  \ 'file': '\.so$\|\.swp\|\.dat$|\.DS_Store$'
  \ }
let g:ale_sign_column_always=1
let g:ale_javascript_eslint_use_global=1
let g:ale_javascript_eslint_options='--cache'
let g:ale_javascript_eslint_executable='eslint_d'
let g:ale_fix_on_save=1
let g:ale_fixers={
  \ 'javascript': ['eslint', 'remove_trailing_lines'],
  \ }

let g:deoplete#enable_at_startup=1

" Strip trailing whitespace on save
autocmd BufWritePre * :call StripTrailingWhitespaces()
function! StripTrailingWhitespaces()
    let _s=@/
    let l=line('.')
    let c=col('.')
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
