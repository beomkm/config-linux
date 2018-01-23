syntax on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "n    ormal! g'\"" | endif
endif

set viminfo='20,<1000

filetype plugin indent on
set hlsearch
set number
set ts=4
set sw=4
set expandtab
colorscheme jellybeans
