syntax on

set expandtab
set smartindent
set nu
set sw=2
set tabstop=2

:imap jk <Esc>

call plug#begin('~/.vim/pack')
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'Valloric/YouCompleteMe'
call plug#end()

" enhance YCM JS completion with tern's smarts
autocmd FileType javascript setlocal omnifunc=tern#Complete
